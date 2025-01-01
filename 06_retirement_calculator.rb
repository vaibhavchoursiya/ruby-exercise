# Retirement Calculator


class RetirementCalculator
  attr_reader :retirement_year, :left_year, :current_year


  def initialize(age, retirement_age)
    @current_year = Time.now.year
    @age = age
    @retirement_age = retirement_age
    @retirement_year = 0
    @left_year = 0
  end

  def calulate
    @left_year = @retirement_age - @age
    @retirement_year = @current_year + @left_year
  end

end

def is_number?(string)
  true if Float(string) rescue false
end

def is_negative_number?(num)
  if num.to_i < 0 
    puts "You cannot enter negative value."
    return false
  end 
  true
end 

print "What is your current age? "
age = gets.chomp

print "At what age would you like to retire? "
retirement_age = gets.chomp

if is_number?(age) || is_number?(retirement_age)

  person_1 = RetirementCalculator.new(age.to_i, retirement_age.to_i)
  person_1.calulate

  puts "You have #{person_1.left_year} untill you can retire."
  print "It's #{person_1.current_year} so you can retire in #{person_1.retirement_year}."
end

# 'Droid Sans Mono', 'monospace', monospace