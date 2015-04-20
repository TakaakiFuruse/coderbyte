=begin
Using the Ruby language, have the function LetterCount(str) take the str parameter being passed and return the first word with the greatest number of repeated letters. For example: "Today, is the greatest day ever!" should return greatest because it has 2 e's (and 2 t's) and it comes before ever which also has 2 e's. If there are no words with repeating letters return -1. Words will be separated by spaces. 

"Today, is the greatest day ever!" -> greatest
Input = "Hello apple pie"Output = Hello
Input = "No words" Output = -1
=end
require 'pry'


class LetterCount
  attr_reader :sentence
  attr_accessor :words_arr

  def initialize(args)
    @sentence = args
    @words_arr = args.split(" ")
  end

  def letter_count
    words_array = self.repeated_letters
    (words_array.empty?) ? -1 : words_array[0]
  end

  def repeated_letters
    # if there's repeated letter, uniq reduces length of words
    self.words_arr.select do |words|
      (words.split("") <=> words.split("").uniq) != 0
    end
  end

end

