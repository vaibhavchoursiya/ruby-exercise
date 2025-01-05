
# Instance variable and Class variable are private by diffault
# Instance variable can access by only getter and setter method
# class variable can access by class method or getter or settter.

class Magic8Ball
  # class variable
  @@ans = ["Yes", "No", "Maybe", "Ask again later"]

  def self.random_num_generater
    rand = Random.rand(@@ans.size)
    @@ans[rand]
  end
end

while true do
  print "What's your question? "
  que = gets.chomp # take input without new line.
  output = Magic8Ball.random_num_generater
  unless output == "Ask again later"
    puts output    
    break
  else
    put output
  end
end

