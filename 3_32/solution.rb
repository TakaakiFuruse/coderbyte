# Using the Ruby language, have the function PrimeMover(num) return the numth prime number. The range will be from 1 to 10^4. For example: if num is 16 the output should be 53 as 53 is the 16th prime number. 

# Use the Parameter Testing feature in the box below to test your code with different arguments.
#Pcode 
=begin

prime_array
  raw num [1,2,3,4......40000]
  for each num 
    prime_array << num if isprime? != true 
  return prime array [3,5,7,......]

isprime?(num)
  array [2..num-1]
  if num % [2..num-1] == 0-> return true

=end


def PrimeMover(num)
  return num 
end

def isprime?(num)
  num_to_divide = (2..(num-1)).to_a
  num_to_divide.select! do |n|
    num % n == 0
  end
  num_to_divide == []
end

def prime_array
  prime_arr = (1..479909).to_a
  prime_arr.select! do |n|
    isprime?(n) == true
  end
end