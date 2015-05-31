################################################################################
#
# Introduction to Ruby on Rails
#
# Exercise conditionals
#
################################################################################
#
# Below are variables that we will use in this exercise.
#
################################################################################

a = 3
b = 5
c = 7

if a == 3 then
  puts "Yes!"
end

if a == 3 && b == 5 then
  puts "Yes!"
end

if a == 3 || b == 15 then
  puts "At least one of them is true!"
end

if ((a == 2 && b == 11) || c == 7) then
  puts "Evaluates true"
end