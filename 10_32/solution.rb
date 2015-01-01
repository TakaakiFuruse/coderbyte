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
  def next_char(ltr)
    next_ltr = ltr.next
    return next_char(next_ltr)
  end
end

class CaesarCipher
  include CharMod

  attr_reader :str, :num
  attr_accessor :letter_arr

  def initialize(str, num)
    @str = str
    @num = num
    @letter_arr = str.split("")
  end

  def gen_caesar_cipher
    # a.each_char{|n| p n if n =~ /[a-zA-Z]/ }
    self.letter_arr.map do |letter|
      if letter =~ /[a-zA-Z]/
        self.num.trial.times.next_char(letter)
      else
        letter
      end
    end
  end
end
