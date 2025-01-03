# Months to pay off a Credit Card


def calculate_months_untill_paid_off(apr, b, p)
  i = apr / 36500

  bp = (b / p) * (1 - (1+i)**30)
  n = (-1/30)*(Math.log(1 + bp))/(Math.log(1 + i))

  return n
end

print "What is your balance? "
b = gets.chomp
print "What is the APR on the card (as a percent)? "
apr = gets.chomp
print "What is the monthly payment you can make? "
p = gets.chomp

puts "It will take you #{calculate_months_untill_paid_off(apr.to_f, b.to_f, p.to_f)}"