=begin

Using the Ruby language, have the function DashInsertII(str) insert dashes ('-') between each two odd numbers and insert asterisks ('*') between each two even numbers in str. For example: if str is 4546793 the output should be 454*67-93-. Don't count zero as an odd or even number. 

Use the Parameter Testing feature in the box below to test your code with different arguments.
=end

require 'pry'

class DashInsertII
  attr_reader :num
  attr_accessor :num_array, :odd_counter, :even_counter

  def initialize(num)
    @num = num
    @num_array = num_into_array(num)
    @odd_counter = 0
    @even_counter = 0
  end
  
  def num_into_array(num)
    num.to_s.split("")
  end

  def insertion_job(num)
    if num.to_i.even? && (self.even_counter % 2 == 0)
      "#{num}*"
    elsif num.to_i.odd? && (self.odd_counter % 2 == 0)
      "#{num}-"
    else
      num
    end
  end

  def iterate_array_and_change_letter(array)
    array.map do |num|
      (self.odd_counter += 1) if num.to_i.odd?
      (self.even_counter += 1) if num.to_i.even?
      insertion_job(num)
    end
  end

  def answer
    iterate_array_and_change_letter(num_array).join
  end
end
