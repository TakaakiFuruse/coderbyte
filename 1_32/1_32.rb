=begin

Question
 Using the Ruby language, have the function PrimeTime(num) take the num parameter being passed and return the string true if the parameter is a prime number, otherwise return the string false. The range will be between 1 and 2^16. 
 Input = 19Output = true
 Input = 110Output = false

P code
  Prime num 
    num / ([2...num -1]) => always return false
    num / num => true
  Non Prime
    num / ([2...num -1]) => return true at least 1 time.
    num / num => true

  prime_time(num)
    arr = [2..(num-1)]
    arr.each |n| num / n
      if num%n == 0 return false
    end
  end

=end

def prime_time(num)
  nums_to_divide = (2..(num-1)).to_a
  nums_to_divide.select! do |n|
    num % n == 0
  end
  nums_to_divide.empty?
end
