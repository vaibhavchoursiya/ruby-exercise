# Tax calculator


print "What is the order amount? "
amount = gets.chomp
print "What is state? "
state = gets.chomp

if state == "WI"
  tax = amount.to_f * 0.055
  total_amount = tax + amount.to_f
  puts "The subtotal is #{amount}."
  puts "The tax is #{0.055}"
end

puts "The total is #{total_amount||=amount}"