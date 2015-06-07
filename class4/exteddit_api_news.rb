# We're going to add a remote data source to pull in stories from Mashable and Digg.
  # http://mashable.com/stories.json
  # http://digg.com/api/news/popular.json
# These stories will also be upvoted based on our rules. No more user input!

# Pull the json, parse it and then make a new story hash out of each story(Title, Category, Upvotes)
# Add each story to an array and display your "Front page"

require 'json'
require 'rest-client'
require 'byebug'

def calculate_upvotes(stories)
  stories.each do |story|
    story[:upvotes] = 1
    if story[:title].downcase.include?('cat')
      story[:upvotes] *= 5
    elsif story[:title].downcase.include?('bacon')
      story[:upvotes] *= 8
    end
    if story[:category].include? 'Crime'
      story[:upvotes] *= 3
    end
  end

end

def show_all_stories(stories)
  stories.each do |story|
    puts "Story: #{story[:title][0..30].gsub(/\s\w+\s*$/, '...')}, Category: (#{story[:category]}), Current Upvotes: #{story[:upvotes]}, Source: #{story[:source]}"
  end
end

def construct_story_hash(title, category, source)
  { :title => title, :category => category, :upvotes => 0, :source => source }
end

def process_mashable_stories(stories)
  rest_data = RestClient.get('http://mashable.com/stories.json')
  json_data = JSON.parse(rest_data)
  news = json_data['new']
  news.each do |news_story|
    story_hash = construct_story_hash(news_story['title'], news_story['channel'], 'Mashable')
    stories << story_hash
  end
end

def process_digg_stories(stories)
  rest_data = RestClient.get('http://digg.com/api/news/popular.json')
  json_data = JSON.parse(rest_data)
  data = json_data['data']
  parsed_data = JSON.parse(data.to_json)
  news = parsed_data['feed']
  news.each do |news_story|
    type = []
    news_story['content']['tags'].each do |tag|
      type = type.push(tag['display'])
    end
    story_hash = construct_story_hash(news_story['content']['title_alt'], type , 'Digg')
    stories << story_hash
  end
end

stories = []

puts 'Getting stories from Mashable'
process_mashable_stories(stories)

puts 'Getting stories from Digg'
process_digg_stories(stories)

puts 'Calculating upvotes'
calculate_upvotes(stories)

show_all_stories(stories)

