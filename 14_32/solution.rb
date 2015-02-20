=begin

Using the Ruby language, have the function FormattedDivision(num1,num2) take both parameters being passed, divide num1 by num2, and return the result as a string with properly formatted commas and 4 significant digits after the decimal place. For example: if num1 is 123456789 and num2 is 10000 the output should be "12,345.6789". The output must contain a number in the one's place even if it is a zero. 
123456789,  10000 -> 12,345.6789
Input = 2 , num2 = 3  Output = "0.6667"
Input = 10 , num2 = 10 Output = "1.0000"

p code

try

 (((123456789 + 0.0001)-0.0001)/10000).round(5)

[10] pry(main)> (2.0000/3).to_f
=> 0.6666666666666666
[11] pry(main)> (123456789.0000/3).to_f
=> 41152263.0
[12] pry(main)> (123456789.0000/10000).to_f
=> 12345.6789
[13] pry(main)> (10.0000/10).to_f
=> 1.0

=end

require 'pry'

def FormattedDivision(num1,num2)
    ((((num1 + 0.0001))-0.0001)/num2).round(4).to_s

end

def split_by_comma(num)

end