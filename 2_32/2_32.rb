def RunLength(str)
  str_array = str.split("")
  count_array = create_counter_array(str_array)
end

def create_counter_array(arr)
  counter_array = []
  counter = 1
  arr.each_with_index do |n, i| 
    if n == arr[i-1]
      counter += 1
    else 
      counter_array << #{counter}#{n}
    end
  end
end


