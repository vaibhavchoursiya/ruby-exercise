# def is_empty?(text)
#   if text == ""
#     puts "\nThis field is required!\n\n"
#     return true
#   end
# end

# def do_exit_func
  
# end


# while true do

#   print "What is the quote? "
#   input_quote = gets.chomp

#   next if is_empty?(input_quote)
  
#   print "Who said it? "
#   quotationer =  gets.chomp

#   next if is_empty?(quotationer)

#   puts quotationer + ' says, ' + '"' + input_quote + '"'
#   print "Do you want to exit? press e: "
#   should_exit = gets.chomp
#   if should_exit == "e"
#     break
#   end

# end

module MyModule
  RATE = 123

  def MyModule.find_a_rate
    RATE
  end
end


puts MyModule::RATE
puts MyModule.find_a_rate