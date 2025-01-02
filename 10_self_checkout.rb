# Self checkout

=begin
Prompt price and quantity three times
Calculate subtotal, tax and total
=end

=begin
Save each price * quantity each time
at the end tax 5.5%
add subtotal and tax and print total
=end

class SelfCheckout
  attr_accessor :subtotal, :total, :tax

  @@tax_rate = 5.5

  def initialize
    @subtotal = 0.0
    @total = 0.0
    @tax = 0.0
  end

  def add_item(price, quantity)
    @subtotal += price*quantity
  end

  def calculate_tax
    @tax  = @subtotal * 0.055
    @total = @subtotal + @tax
  end

end

def is_number?(num)
  true if Float(num) rescue false
end

def input_func(checkout, index)
  print "Enter the price of item #{index + 1}: "
  price = gets.chomp
  print "Enter the quantity of item #{index + 1}: "
  quantity = gets.chomp

  if is_number?(price) && is_number?(quantity)
    checkout.add_item(price.to_f, quantity.to_f)
    return true
  else
    print "Enter vaild input."
  end

end

def print_output(checkout)
  puts "\nSubtotal: $#{checkout.subtotal}"
  puts "Tax: $#{checkout.tax}"
  puts "Total: $#{checkout.total}"
end

def main
  checkout = SelfCheckout.new

  3.times do |index|
    valid = input_func(checkout, index)
    unless valid
      break
    end
    if index == 2
      checkout.calculate_tax
    end
  end  
  
  print_output(checkout)
end


main