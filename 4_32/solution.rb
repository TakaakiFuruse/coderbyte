=begin

Using the Ruby language, have the function PalindromeTwo(str) take the str parameter being passed and return the string true if the parameter is a palindrome, (the string is the same forward as it is backward) otherwise return the string false. The parameter entered may have punctuation and symbols but they should not affect whether the string is in fact a palindrome. For example: "Anne, I vote more cars race Rome-to-Vienna" should return true.

Input = "Noel - sees Leon"  Output = "true"

Input = "A war at Tarawa!"  Output = "true"

=end
require 'pry'

def PalindromeTwo(str)
  edited_str = str.gsub(/[!-\/:-@≠\[-`{-~]/, "").gsub(/\s/, "")
  edited_str.downcase.reverse == edited_str.downcase
end
