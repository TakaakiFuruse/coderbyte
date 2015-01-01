=begin
Using the Ruby language, have the function SimpleMode(arr) take the array of numbers stored in arr and return the number that appears most frequently (the mode). For example: if arr contains [10, 4, 5, 2, 4] the output should be 4. If there is more than one mode return the one that appeared in the array first (ie. [5, 10, 10, 6, 5] should return 5 because it appeared first). If there is no mode return -1. The array will not be empty. 

[10, 4, 5, 2, 4] => 4
Input = 5,5,2,2,1  Output = 5
Input = 3,4,1,6,10  Output = -1
=end

require 'pry'


def simple_mode(arr)
end


def count_mode(arr)
  mode_hash = {}
  arr.each do |num|
    if mode_hash[num].is_a?(Integer)
      mode_hash[num] += 1
    else
      mode_hash[num] = 1
    end
  end
  mode_hash
end
