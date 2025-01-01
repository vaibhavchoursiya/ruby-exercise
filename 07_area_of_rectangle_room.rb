module RectangeRoom
  
  MSQURE = 0.09290304

  def self.area(width, height)
    width * height
  end

  def self.covt_squre_to_meter(area)
    area * MSQURE
  end

end

def is_number?(num)
  true if Float(num) rescue false
end

print "What is the length of the roo in feet? "
width = gets.chomp

print "What is the width of the room in feet? "
height = gets.chomp

unless is_number?(width) && is_number?(height)
  print "Enter valid dimensions."
else
  area = RectangeRoom.area(width.to_f, height.to_f)
  puts "You entered dimensions of #{width} feet by #{height} feet."
  puts "The are is\n#{area} square feet"
  puts "#{RectangeRoom.covt_squre_to_meter(area)} square meters"
end
