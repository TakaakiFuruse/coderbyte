=begin

Using the Ruby language, have the function CountingMinutes(str) take the str parameter being passed which will be two times (each properly formatted with a colon and am or pm) separated by a hyphen and return the total number of minutes between the two times. The time will be in a 12 hour clock format. For example: if str is 9:00am-10:00am then the output should be 60. If str is 1:00pm-11:00am the output should be 1320. 

Use the Parameter Testing feature in the box below to test your code with different arguments.

 9:00am-10:00am > 60
 1:00pm-11:00am > 1320. 
 "12:30pm-12:00am" > 690
"1:23am-1:08am" >1425

stopped codeing. 'cause time 

=end

require 'pry'


def CountingMinutes(str)

end

def get_start_time(str)
  str.split("-")[0]
end

def get_end_time(str)
  str.split("-")[1]
end

def am_or_pm(str)
  return 0 if str =~ /am/ 
  retrun 1 str =~ /pm/
end

def get_hour(str)
  str.split(":")[0]
end

def get_min(str)
  str.split(":")[1]
end

def covnert_to_min(str)
  if am_or_pm(str) == 0
    get_hour(str) * 60 + get_min(str)
  elsif am_or_pm(str) == 1
    get_hour(str) * 60 + 12 * 60 + get_min(str)
  end
end

