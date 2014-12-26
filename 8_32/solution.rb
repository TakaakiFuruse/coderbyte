=begin

Using the Ruby language, have the function ArrayAddition(arr) take the array of numbers stored in arr and return the string true if any combination of numbers in the array can be added up to equal the largest number in the array, otherwise return the string false. For example: if arr contains [4, 6, 23, 10, 1, 3] the output should return true because 4 + 6 + 10 + 3 = 23. The array will not be empty, will not contain all the same elements, and may contain negative numbers. 

Input = 5,7,16,1,2   16 <=> X Output = "false"
Input = 3,5,-1,8,12   12 <=> 5,-1,8  Output = "true"
[4, 6, 23, 10, 1, 3] -> true 
[1,2,3,100] -> false
=end
require 'pry'

def ArrayAddition(arr)
  edited_arr = edited_array(arr)
  comb_num_arr = combinations(arr)
  result_arr = combination_calc(edited_arr, comb_num_arr)
  result_arr.include?(arr.sort!.last)
end

def edited_array(arr)
  del_last_el = arr.sort! - [arr[-1]]
end

def combinations(arr)
  comb_num = (1..arr.length).to_a
end

def combination_calc(edited_arr, comb_num_arr)
  result_arr =[]
  comb_num_arr.each do |num|
    edited_arr.combination(num).to_a.each do |n|
      result_arr << n.inject(:+)
    end
  end
  return result_arr
end
