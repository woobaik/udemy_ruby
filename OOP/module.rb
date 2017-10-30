class Engineer
  def do_math
    puts "We do numbers!"
  end
end

class Designer
  def make_pretty
    puts "Look how it flows"
  end
end

module  ManagemetTraining
  def yelling
    puts "GET BACK TO WORK"
  end
end

#We can't instantiate a module


 #Ruby doesn't allow classes to inherit from more than one parent class
 #Instead we can use nodules (mixins)

class LeadEngineer < Engineer
  include ManagemetTraining
end
#Let LeadEngineer use the methods defined in the ManagemetTraining module


class LeadDesigner < Designer
  include ManagemetTraining
end

lead_eng = LeadEngineer.new
lead_des = LeadDesigner.new

lead_eng.yelling
lead_des.make_pretty

Kernel.puts("hello")
