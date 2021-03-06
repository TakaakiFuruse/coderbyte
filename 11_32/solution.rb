=begin
Using the Ruby language, have the function CaesarCipher(str,num) take the str parameter and perform a Caesar Cipher shift on it using the num parameter as the shifting number. A Caesar Cipher works by shifting each letter in the string N places down in the alphabet (in this case N will be num). Punctuation, spaces, and capitalization should remain intact. For example if the string is "Caesar Cipher" and num is 2 the output should be "Ecguct Ekrjgt". 

Input = "Hello" & num = 4
  -> Output = "Lipps"
Input = "abc" & num = 0
  -> Output = "abc]

"Caesar Cipher", 2
  -> "Ecguct Ekrjgt". 
=end
require 'pry'

module CharMod
  def next_char(ltr, num)
    return ltr if num == 0
    num -= 1
    next_char(ltr.next!, num)
  end
end

class CaesarCipher
  include CharMod

  attr_reader :str, :num
  attr_accessor :letter_arr

  def initialize(str, num)
    @str = str
    @num = num
  end

  def gen_caesar_cipher
    ans_arr = []
    self.str.each_char do |letter|
      if letter =~ /[a-zA-Z]/
        ans_arr << next_char(letter, self.num)
      else
        ans_arr << letter
      end
    end
    ans_arr.join
  end

end
