# Guess Number Game

=begin
  GET the diffcultiy level
  GENERATE a random number based on diffcultiy level
  ASK for input
  based on input provide clue
  after completing the game ask for again.
=end

count = 0
while true do

  if count == 0
    print "Pick a difficulty level (1, 2, or 3): "
    level = gets.chomp
    
    random_num = 0
    
    case level
      when "1"
        random_num = Random.rand(1..10)
      when "2"
        random_num = Random.rand(1..100)
      when "3"
        random_num = Random.rand(1..1000)
    end
      print "I have my number. What's your guess? "
      guess_num = gets.chomp
  end
  
  if guess_num.to_i > random_num
    print "Too High. Guess again: "
    guess_num = gets.chomp
    count += 1

  elsif guess_num.to_i < random_num

    print "Too low. Guess again:"
    guess_num = gets.chomp
    count += 1
  elsif guess_num.to_i == random_num
    print "You got it in #{count} guesses!\n"
    puts "Play again? "
    ans = gets.chomp

    if ans == "n"
      puts "Goodbye!"
      break
    else
      count = 0
    end
  end
end


