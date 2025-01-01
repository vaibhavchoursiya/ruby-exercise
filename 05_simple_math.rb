class SimpleMath
  def initialize(num_1, num_2)
    @num_1 = num_1
    @num_2 = num_2
  end

  def add
    @num_1 + @num_2
  end

  def diff
    @num_1 - @num_2
  end

  def product
    @num_1 * @num_2
  end

  def quotient
    begin
      @num_1 / @num_2.to_f
    rescue ZeroDivisionError
      "infinite"
    end
    
  end
end

def is_valid_number?(num_1, num_2)
  unless num_1.is_a?(Numeric) && num_2.is_a?(Numeric)
    puts "Enter a vaild numerical value."
    return false
  end
  true
end

def is_negative_number?(num_1, num_2)
  if num_1.to_i < 0 || num_2.to_i < 0
    puts "You cannot enter negative value."
    return false
  end 
  true
end 

# gets store input in string format.
while true do
  print "What is the first number? "
  num_1 = gets.chomp
  
  print "What is the second number? "
  num_2 = gets.chomp    

  next unless is_valid_number?(num_1.to_i, num_2.to_i) 
  next unless is_negative_number?(num_1, num_2)

  calc = SimpleMath.new(num_1.to_f, num_2.to_f)

  puts "#{num_1} + #{num_2} = #{calc.add}\n#{num_1} - #{num_1}- #{num_2} = #{calc.diff}\n#{num_1} * #{num_2} = #{calc.product}\n#{num_1} / #{num_2} = #{calc.quotient}"
end




# puts "#{num_1} + #{num_2} = #{calc.add}"
# puts "#{num_1} - #{num_2} = #{calc.diff}"
# puts "#{num_1} * #{num_2} = #{calc.product}"
# puts "#{num_1} / #{num_2} = #{calc.quotient}"
