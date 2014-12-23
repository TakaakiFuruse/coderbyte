=begin

Using the Ruby language, have the function Division(num1,num2) take both parameters being passed and return the Greatest Common Factor. That is, return the greatest number that evenly goes into both numbers with no remainder. For example: 12 and 16 both are divisible by 1, 2, and 4 so the output should be 4. The range for both parameters will be from 1 to 10^3. 

Input = 7 & num2 = 3  Output = 1
Input = 36 & num2 = 5  4Output = 18



=end
require 'pry'

def Division(num1,num2)
  (divisible_nums(num1) & divisible_nums(num2)).last
end

def divisible_nums(num)
  raw_num = (1..num).to_a
  raw_num.select do |n|
    num%n == 0
  end
end
