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

def RunLength(str)
end

def str_to_a(str)
end

def create_counter_hash(array)
end


