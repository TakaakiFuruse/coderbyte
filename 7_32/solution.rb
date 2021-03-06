=begin

Using the Ruby language, have the function ArithGeoII(arr) take the array of numbers stored in arr and return the string "Arithmetic" if the sequence follows an arithmetic pattern or return "Geometric" if it follows a geometric pattern. If the sequence doesn't follow either pattern return -1. An arithmetic sequence is one where the difference between each of the numbers is consistent, where as in a geometric sequence, each term after the first is multiplied by some constant or common ratio. Arithmetic example: [2, 4, 6, 8] and Geometric example: [2, 6, 18, 54]. Negative numbers may be entered as parameters, 0 will not be entered, and no array will contain all the same elements. 

Input = 5,10,15  Output = "Arithmetic"
Input = 5,25,125  Output = "Geometric"
3，6，12，24，48 -> Geometric
18、16、14、12、10 -> Arithmetic
162、54、18、6、2 -> Geometric
Input = 2,4,16,24  Output = -1

=end
require 'pry'

def ArithGeoII(arr)
  "Geometric" if is_geo?(arr) == true
  "Arithmatic" if is_ari?(arr) == true
  if is_ari?(arr) == false && is_geo?(arr) == false
    -1
  elsif is_geo?(arr) == true
    "Geometric"
  else is_ari?(arr) == true
    "Arithmatic"
  end
end


def is_ari?(arr)
  arry = []
  arr.each_cons(2) do |n|
    (n[0] > n[1]) ? (arry << (n[0] - n[1])) : (arry << (n[1] - n[0]))
  end
  arry.uniq.length == 1
end

def is_geo?(arr)
  arry = []
  arr.each_cons(2) do |n|
    (n[0] > n[1]) ? (arry << (n[0] % n[1])) : (arry << (n[1] % n[0]))
  end
  arry.uniq == [0]
end

is_geo?([5, 25, 125])
