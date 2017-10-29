class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end

  def introduce
    puts "Hi, my name is #{@name}"
  end
end

dave = Person.new("Dave")
top = Person.new("Tom")

p dave
p dave.name

dave.introduce
top.introduce


class Person
  def self.introduce
    puts "I'm the abstract concept of a person"
  end

  class << self
    def default_man
      Person.new("John Doe")
    end
  end




end


person = Person.new("Anonymous")
person.introduce   #calls the instance method

Person.introduce #calls the class method

class Lawyer < Person  #inherit class method
end

val = Lawyer.new("Val")

p val
val.introduce
Lawyer.introduce
