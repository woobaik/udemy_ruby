#Boolean
true
false


#If statement/expression (Conditional)
#Check a condition
#execute certain code depending on whether the condition was true or false

condition = true
#if-else statement
#keywords - reversed words (can't be variable or method names)

puts "I'm outside the conditional"

if condition
  puts "it was true"
else
  puts "it was false"
end

puts "I'm back outside the conitional"


it_is_raining = true

if it_is_raining
  puts "Bring an umbrella"
else
  puts "Wear shorts"
end


#Railway tracks
#             //===========
#============<
# =>          \\===========

railway_switch = true

if railway_switch
  puts "train goes left"
else
  puts "train goes right"
end


puts "pick a numer"
input = gets.chomp.to_i

magic_number = 7

if input > magic_number
  puts "Your number is greater than #{magic_number}."
else
  puts "Your number is less or equal to the magic_number."
end
