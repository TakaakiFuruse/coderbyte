=begin

Using the Ruby language, have the function StringScramble(str1,str2) take both parameters being passed and return the string true if a portion of str1 characters can be rearranged to match str2, otherwise return the string false. For example: if str1 is "rkqodlw" and str2 is "world" the output should return true. Punctuation and symbols will not be entered with the parameters. 

Input = "cdore" & str2= "coder"  Output = "true"
Input = "h3llko" & str2 = "hello"  Output = "false"
Input = "rkqodlw" & str2 = "world"  Output = "true"

=end
require 'pry'

def StringScramble(str1,str2)
  str2.split("").sort! == (str1.split("") & str2.split("")).sort!
end
