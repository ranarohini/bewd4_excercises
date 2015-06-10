#Building Class
class Building
  attr_accessor :building_name, :building_address, :apartments

  def initialize(building_name, building_address)
    @building_name = building_name
    @building_address = building_address
    @apartments = []
  end

  def view_apartments
    puts "-----------Highrise Luxury Apartment List-----------"
    @apartments.each do |apt|
      puts "Apartment: #{apt.name}"
      puts "Sqft: #{apt.apt_sqft}  Bedrooms: #{apt.apt_bedrooms}  Bathrooms: #{apt.apt_bathrooms}"
      puts 'This apartment is vacant' if apt.renter.nil?
    end
  end

end
