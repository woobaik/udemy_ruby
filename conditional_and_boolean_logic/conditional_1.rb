# # if - else
# Binary decision
# if yes, do this, if no, do that
#
#   Comparing the size of numbers

  x = rand(100)
  y = rand(100 )
# Nested Conditional
  if x > y
    puts "#{x} is greater than #{y}."
  else
    if x == y
      puts "#{x} is equal to #{y}."

    else
    puts "#{x} is less than #{y}"
    end
  end


# if - elsif - else

if x > y
  puts "#{x} is greater than #{y}."
elsif x == y
    puts "#{x} is equal to #{y}."
else
  puts "#{x} is less than #{y}"

end
