require "io/console"

# Password Indicator
def is_number?(num)
  true if Float(num) rescue false
end

def password_validator(password)
  if password.length < 8
    # Very weak 
    if is_number?(password)
      return 0
    # Weak
    elsif password.match?(/\A[a-zA-Z]+\z/)
      return 1
    
    else 
      return 1
    end


  elsif password.match?(/\A[a-zA-Z0-9]+\z/) && password.length >= 8
    return 2
  elsif password.length > 8 && password.match?(/(?=.*[a-zA-Z])(?=.*\d)(?=.*[^a-zA-Z0-9])/)
    return 3
  end
end

while true do
  print "Enter password: "
  password = STDIN.noecho(&:gets).chomp

  case password_validator(password)
    when 0 then puts "The password '#{password}' is a very weak password."
    when 1 then puts "The password '#{password}' is a weak password."
    when 2 then puts "The password '#{password}' is a strong password."
    when 3 then puts "The password '#{password}' is a very strong password."
  end

  print "\n\n"
  print "Do you want to exit? press Y/y or n/N: "
  do_exit = gets.chomp
  if do_exit.downcase == "y"
    break
  end
end