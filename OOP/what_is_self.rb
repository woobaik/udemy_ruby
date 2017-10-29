p self

#We're always on an object

# methods can be defined on the main object

def main_method
  puts self
end

main_method

class Hamburger #self changed
  puts self # self points to the class

  def initialize #self changes again
    puts self # refers to the instance
  end

  def self.jingle
    puts "tomatoes pickles lettuce onion"
    puts self #self refres to the class
  end

  def eat
    "MMMMM good."
  end

  def print_noise
    puts self.eat  #we can call eat without receiver (instance methods)
  end


end

Hamburger.new.print_noise
p Hamburger.jingle
