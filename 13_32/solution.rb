=begin

Using the Ruby language, have the function Consecutive(arr) take the array of integers stored in arr and return the minimum number of integers needed to make the contents of arr consecutive from the lowest number to the highest number. For example: If arr contains [4, 8, 6] then the output should be 2 because two numbers need to be added to the array (5 and 7) to make it a consecutive array of numbers from 4 to 8. Negative numbers may be entered as parameters and no array will have less than 2 elements. 

[4, 8, 6] -> 2
Input = 5,10,15   Output = 8
Input = -2,10,4   Output = 10

p code 
arr 5 15 10 
sort -> 15 10 5
15 - 10 = 5 , 5 -1 = 4 
10 - 5  = 5, 5-1 = 4
4 + 4 = 8

arr 2 4 6 8
sort 8 6 4 2 
8 - 6 = 2, 2-1 
6 - 4  = 2, 2-1
4 -2  = 2, 2-1

a[n] - a[n-1] -1
a[n-1] - a[n-2] -1
....
a[1] - a[0] -1
---
arr
sort -> [1 .. 2... n-m ...n-1.. n ]
(1..n).to_a -> [1...n]


=> ans

=end

require 'pry'


def consecutive(arr)
  consecutive_arr(arr).length - arr.length
end

def consecutive_arr(arr)
  first_el = arr.sort[0]
  last_el = arr.sort[-1]
  (first_el..last_el).to_a
end
