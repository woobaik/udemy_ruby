# For Loops :

object = ['stuff', 'that', 'lives', 'in']
for item in object do
  puts item.upcase
end

puts item

# ITERATOR (type of method)
# each

object.each do |thing|
  puts thing.reverse
end

# puts thing =outside of block, the "thing" doesn't mean anything.

# Scope (variables just mean something in a particular context/part of the program)


object.each {|element| puts "haha" * 2}

#Change the values in the array.

(0...object.length).each do |index|
  object[index] = "evil " + object[index]
end

p object

dinosaurs = ['t-rex', 'raptor', 'branchiosaur']

dinosaurs.each_with_index do |dinosaur, index|
    dinosaurs[index] = "awesome " + dinosaur
  end

  p dinosaurs

  # An iterator is a method that takes a method

  dinosaurs.include?("t-rex")

# a block : { } (one iine block), do ... end (multiline block)


# if your each isn't working, check you have a block and pointer.
