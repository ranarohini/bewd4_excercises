class SecretNumber
# this class will generate our secret number for us


#   This class should initiate an array of numbers that range between 1 - 10.
#   Use a method from the array class to select a random element from that array. This random number will be the secret number.
#   This way the secret number is also a secret to you.
def initialize
  secret_array = (1..10).to_a.shuffle
# secret_array = (1..10).to_a.sample(10)
 secret_number = secret_array.sample
end

end
