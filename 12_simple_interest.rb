
# Simple Interest

class Interest
  def initialize
    
  end

  def self.calculate_simple_interest(rate, principal, time)
    amount = principal*(1 + (rate/100)*time)
    amount
  end
end

def is_number?(num)
  true if Float(num) rescue false
end

print "Enter the principal: "
p = gets.chomp
print "Enter the rate of interest: "
r = gets.chomp
print "Enter the number of year: "
t = gets.chomp

if is_number?(p) && is_number?(r) && is_number?(t)

  for i in 1..t.to_i
    total_amount = Interest.calculate_simple_interest(r.to_f, p.to_f, i.to_i)

    puts "\nAfter #{i.to_i} years at #{r}%, the investment will be worth $#{total_amount}"  
  end
  
else
  print "Enter valid values."
end

