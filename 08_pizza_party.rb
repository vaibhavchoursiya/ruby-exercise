class PizzyParty
  attr_reader :per_pieces, :left_over_piece

  def initialize(num_of_people, num_of_pizza, num_of_slices)
    @num_of_people = num_of_people
    @num_of_pizza = num_of_pizza
    @num_of_slices = num_of_slices
    @per_pieces = 0
    @left_over_piece = 0
  end

  def divide_pizza
    @per_pieces = ((@num_of_pizza * @num_of_slices) / @num_of_people).round

    @left_over_piece = (@num_of_slices*@num_of_pizza -  @num_of_people*@per_pieces).to_i
  end


end

print "How many people? "
num_of_people = gets.chomp

print "How many pizzas do you have? "
num_of_pizzas = gets.chomp

print "The number of slices per pizza: "
num_of_slices = gets.chomp

obj = PizzyParty.new(num_of_people.to_i, num_of_pizzas.to_i, num_of_slices.to_f)
obj.divide_pizza

puts "Each person gets #{obj.per_pieces} pieces of pizza."
puts "There are #{obj.left_over_piece} pieces left"