
class ComputingStatistic
  @@speed = []

  def get_speed
    @@speed
  end
  
  def add_speed(s)
    @@speed.push(s)
  end

  def max
    if @@speed.size > 0
      @max_value = @@speed[0]
      for i in 0...@@speed.size
        if @max_value < @@speed[i]
          @max_value = @@speed[i]              
        end   
      end
      return @max_value
    end
  end

  def min 
    if @@speed.size > 0
      @min_value = @@speed[0]
      for i in 0...@@speed.size
        if @min_value > @@speed[i]
          @min_value = @@speed[i]
        end
      end
      return @min_value
    end
  end

  def mean
    sum = 0
    @@speed.each do |i| 
      sum += i
    end
    @mean_value =  sum.to_f/@@speed.size
  end   

  def standard_deviation
   l = @@speed.select { |i| (@mean_value - i)**2  }
   sum = 0
   l.each do |i|
     sum += i
   end
   return (sum.to_f / l.size)**(1/2) 
  end
end

cs = ComputingStatistic.new

while true do 
  print "Enter a number: "
  num = gets.chomp

  unless num == "done"
    cs.add_speed(num.to_f)
  else
    print "Numbers: #{cs.get_speed}\n"
    puts "The average is #{cs.mean}"
    puts "The minimum is #{cs.min}"
    puts "The maximum is #{cs.max}"
    puts "The standard deviation is #{cs.standard_deviation}"
    break
  end

end