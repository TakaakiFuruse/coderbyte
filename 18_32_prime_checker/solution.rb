=begin
Using the Ruby language, have the function PrimeChecker(num) take num and return 1 if any arrangement of num comes out to be a prime number, otherwise return 0. For example: if num is 910, the output should be 1 because 910 can be arranged into 109 or 019, both of which are primes. 

Use the Parameter Testing feature in the box below to test your code with different arguments.
Input = 98Output = 1
Input = 598Output = 1
=end

require 'pry'
require 'prime'

def PrimeChecker(num)
  num_array = num.to_s.split("")
  perms = num_array.permutation(num_array.length).to_a.uniq
  perms_i_array = perms.map{|n| n.join("").to_i}
  primes = perms_i_array.select do |num|
    num.prime?
  end
  (primes.length == 0) ? 0 : 1

end

p PrimeChecker(910) == 1
p PrimeChecker(98) == 1
p PrimeChecker(598) == 1
p PrimeChecker(222) == 0
p PrimeChecker(444) == 0
