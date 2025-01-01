def count_string(text)

  text.length
end

while true do

  print "\nWhat is the input string? "
  text = gets.chomp
  
  if text.nil? || text == ""
    puts "Please enter something"
  else 
    puts "#{text} has #{count_string(text)} Characters."
  end

  print "\nDo you want to exit? press e"
  should_exit = gets.chomp

  if should_exit == "e"
    break
  end
  
end


