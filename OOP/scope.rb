# Scope
# Algebra Test
# Section 1:

# Find x.
# The scope of x is the question where it occurs
# 1. 5x = 25
#
# 2. 2 + x = 102
#
# 3. 65 - x = 37


def sum_squares(x, y)
  x**2 + y**2
end

def square_sum(x, y)
  (x+y) ** 2
end

p sum_squares(2, 5)

p square_sum(3, 7)

p square_sum(2, 5)

# local variables can't be accessed from inside a different method than were defined
# We created a new scope for local variables when we define a method, create a block

# Instance variables
# define on self
# at top level, instance variables are defined on main
@bananas = 0

def pick_banana
  @bananas += 1
end

p pick_banana
p pick_banana


class Teacher

  puts self

  attr_accessor :students
  def initialize
    @students = ['timmy', 'tammy']
  end

end

haram = Teacher.new
p  haram.students

# Class variables are shared by all instances of a class

class Customer
  @@total_customers = 0

  def initialize
    @@total_customers += 1
    @cart = []
    if @@total_customers == 1
    puts "#{@@total_customers} customer served"
    else
    puts "#{@@total_customers} customers served"
    end

    def add_to_cart(product)
      @product = product
      @cart.push(product)

    end  #local variable will be ended at the end of method


  end

end

Customer.new
Customer.new
Customer.new


class VIPcustomer < Customer

end

VIPcustomer.new
Customer.new

local_variable = "I'm local"
@instance_varaible = "I belong to an instance"
@@class_variable = "I belong to the class"

#Princible of Least Access
# good to make your variables have the smallest scope possible
