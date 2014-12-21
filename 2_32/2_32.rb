=begin

Using the Ruby language, have the function RunLength(str) take the str parameter being passed and return a compressed version of the string using the Run-length encoding algorithm. This algorithm works by taking the occurrence of each repeating character and outputting that number along with a single character of the repeating sequence. For example: "wwwggopp" would return 3w2g1o2p. The string will not contain any numbers, punctuation, or symbols. 

Input = "aabbcde" Output = "2a2b1c1d1e"
Input = "wwwbbbw" Output = "3w3b1w"

str_to_a = str.split(" ")

counter_hash = Hash.new

 str_to_a.each do |n|
  if h[:#{n}].nil?
   counter_hash[:#{n}]=1
  else
    counter_hash[:#{n}]+=1  
  end  

counter_hash.map{|k,i| p "#{i}#{k}" }.join("")

=end
require 'pry'

# def RunLength(str)
#   str_array = str_to_a(str)
#   count_hash = create_counter_hash(str_array)
#   hash_to_s(count_hash)
# end

# def str_to_a(str)
#   str.split("")
# end

# def create_counter_hash(array)
#   counter_hash = Hash.new

#   array.each do |n| 
#     if counter_hash[:"#{n}"].nil?
#       counter_hash[:"#{n}"]=1
#     elsif counter_hash
#       counter_hash[:"#{n}"]+=1
#     end
#   end
  

#   return counter_hash
# end

# def hash_to_s(hash)
#   hash.map{|k,i| p "#{i}#{k}" }.join("")
# end

# RunLength("wwwbbbw")

def RunLength(str)
counter = 0
letter = str[0]
ans = []

  str.each_char do |char|
    if char == letter
      counter += 1
    elsif char != letter
      ans << counter 
      ans << letter
      letter = char
      counter = 1
    end
  end
ans << counter
ans << letter
ans.join("").to_s
end