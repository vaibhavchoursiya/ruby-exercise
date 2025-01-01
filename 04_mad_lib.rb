class CreateStory
  # class variable
  @@name_of_class = "Create Story"
  attr_reader :noun,:verb,:adj,:adv

  def initialize(noun, verb, adj, adv)
    # Instance variable
    @noun = noun
    @verb = verb
    @adj  = adj
    @adv = adv
  end

  def create_story
    "Do you #{@verb} your #{@adj} #{@noun} #{@adv} That's hilarious!"
  end

  # class method and self represent class or instance based on scope.
  def self.name_of_class
    @@name_of_class
  end

end

print "Enter a noun: "
noun = gets.chomp

print "Enter a verb: "
verb = gets.chomp

print "Enter a adjective: "
adj = gets.chomp

print "Enter a adverb: "
adv = gets.chomp

story = CreateStory.new(noun, verb, adj, adv)

puts story.create_story
puts CreateStory.name_of_class