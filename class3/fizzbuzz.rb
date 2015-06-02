
(1..100).each do |i|
  if i % 3 == 0 && i % 5 == 0
  	puts "FizzBuzz #{i}" 
  else
  	puts "Fizz #{i}" if i % 3 == 0
  	puts "Buzz #{i}" if i % 5 == 0
  end
end