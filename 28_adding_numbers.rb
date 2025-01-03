

def main
  total = 0
  print "How many number do you want to enter: "
  quantity = gets.chomp

  quantity.to_i.times do
    print "Enter a number: "
    input = gets.chomp
    total += input.to_f
  end

  print "The total is #{total}."
end

main