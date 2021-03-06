=begin
Using the Ruby language, have the function PermutationStep(num) take the num parameter being passed and return the next number greater than num using the same digits. For example: if num is 123 return 132, if it's 12453 return 12534. If a number has no greater permutations, return -1 (ie. 999). 



[17] pry(main)> a.permutation(3).to_a
=> [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]

[21] pry(main)> b = a.permutation(3).to_a.map {|n| n.join("").to_i}
=> [123, 132, 213, 231, 312, 321]

[23] pry(main)> b.sort
=> [123, 132, 213, 231, 312, 321]
[24] pry(main)> b.sort.map{|n| n - 123}
=> [0, 9, 90, 108, 189, 198]

[28] pry(main)> b1[1]

=> 9
[29] pry(main)> b[1]
=> 132

=end

require 'pry'


def PermutationStep(num)

  num_array = num_to_a(num)
  permutation = num_permutation(num_array)
  diff_array = permutation.sort.map{|n| n - num}
  next_largest_num_address = diff_array.sort.find_index(0) + 1

  if diff_array.length == 1
    -1
  else
    permutation.sort[next_largest_num_address]
  end
end

def num_to_a(num)
  num.to_s.split("")
end

def num_permutation(num_array)
  num_array.permutation(num_array.length).map{|n| n.join("").to_i}.uniq
end
