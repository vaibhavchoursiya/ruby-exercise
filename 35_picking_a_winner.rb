
name_array = []

while true do
  print "Enter a name: "
  name = gets.chomp
  if name == ""
    rand = Random.rand(name_array.size)
    puts "The winner is... #{name_array[rand]}"
    name_array.delete_at(rand)
  else 
    name_array.push(name)
  end  
end
