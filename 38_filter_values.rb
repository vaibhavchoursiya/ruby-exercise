

def filter_values(values)
  list = values.split(" ")
  filter_list = list.select!{ |x| x.to_i % 2 == 0 } 
  
  filter_list
end

print "Enter a list of numbers, separated by spaces: "
values = gets.chomp

print "The even number are "
puts filter_values(values)