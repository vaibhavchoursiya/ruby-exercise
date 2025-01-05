


employ_list = ["John Smith", "Jackie Jackson", "Chris Jones", "Amanda Cullen", "Jeremy Goodwin"]

until employ_list == [] do
  puts "There are #{employ_list.size} employees:"
  puts employ_list
  
  print "\nEnter an employee name to remove: "
  employ_name = gets.chomp
  
  value = employ_list.delete(employ_name)
  if value == nil
    puts "----------Enter a valid name-----------\n\n"
  else
    puts value  
  end

end

