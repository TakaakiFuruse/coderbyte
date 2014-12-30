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

class CaesarCipher

  attr_reader :str, :num
  attr_accessor :str_arr

  def initialize(str, num)
    @str = str
    @num = num
    @str_arr = str.split(" ")
  end

  def gen_caesar_cipher
  end

  def next_char

  end

  def next_char_recursive(num)

  end




end
