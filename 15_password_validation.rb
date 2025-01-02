# Password vaildation
require 'io/console'


dict = {}

def register
  print "Enter username: "
  username = gets.chomp

  print "Enter password: "
  password = STDIN.noecho(&:gets).chomp

  return username, password
end

username, password = register

dict[username] = password
puts "Username and password registered!"

username, password = register

if dict[username] == password
    print "Welcome!"
else
    puts "I don't know you."
end

