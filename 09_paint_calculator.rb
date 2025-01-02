=begin
Prompt width and length
1 gallon cover 350 sf
Display the num of gallons need for ceiling (whole number).
=end

=begin
Input width and height
Find area of ceiling width * height
Find number of gallen need for area/gallon = whole number
=end


class PaintCalculator
  @@gallon = 350
  @@square_foot = 10.7639

  attr_accessor :required_paint,:area

  def initialize
    @area = 0
    @required_paint = 0
  end

  def square_room(width, length)
    @area = (width * length) * @@square_foot
    calculate
  end

  def round_room(radius)
    @area = (Math::PI*radius*radius)* @@square_foot
    calculate
  end

  def calculate
    @required_paint = (@area  / @@gallon ).round
  end
end

def is_number?(num)
  true if Float(num) rescue false
end

def display_output(area, required_paint)
  print "You will need to purchase #{required_paint} gallons of\npaint to cover #{area} square feet."  
end

def start
  print "Select room type: press 's'-> square, press 'r'-> round: "
  selected_room = gets.chomp

  case selected_room
    when "s" 
      square_room
    when "r"
      rounded_room
    default
      print "select vaild input."
  end
end

def square_room
  print "Enter width of ceiling: "
  width = gets.chomp

  print "Enter length of ceiling: "
  length = gets.chomp

  if is_number?(width) && is_number?(length)
    paint = PaintCalculator.new()
    paint.square_room(width.to_f, length.to_f)

    display_output(paint.area, paint.required_paint)
  else 
    print "Please enter valid input\n"
  end
end


def rounded_room
  print "Enter radius of ceiling: "
  radius = gets.chomp

  if is_number?(radius)
    paint = PaintCalculator.new
    paint.round_room(radius)

    display_output(paint.area, paint.required_paint)
  else 
    print "Please enter valid input\n"
  end
  
end

