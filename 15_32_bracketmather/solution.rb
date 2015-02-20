=begin

Using the Ruby language, have the function BracketMatcher(str) take the str parameter being passed and return 1 if the brackets are correctly matched and each one is accounted for. Otherwise return 0. For example: if str is "(hello (world))", then the output should be 1, but if str is "((hello (world))" the the output should be 0 because the brackets do not correctly match up. Only "(" and ")" will be used as brackets. If str contains no brackets return 1. 

Use the Parameter Testing feature in the box below to test your code with different arguments.

    "()"
    ")("
    "(hello (world))"
    "((hello (world))"
    "(coder)(byte))"
    "(c(oder)) b(yte)"

=end

require 'pry'

def BracketMatcher(str)
  str_array = str.split("")
  left_braket = 0
  right_braket = 0

  str_array.each do |elm|
    case elm
    when "(" then 
      left_braket += 1
    when ")" then 
      right_braket += 1
    end
  end
  (left_braket == right_braket) ? 1 : 0
end
