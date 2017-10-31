# Iterators
# each/ each_with_index
# array
# range


# Mapping an array o a new array
# Keep the original array the same
# have a new array, where each element correspond
# to something in the old array
opinions_about_bad_guys = []
bad_guys = ["Darth Vader", "Biff Tannen", "Maleficent", "Regina George"]
bad_guys.each do |villain|

  opinion =  "#{villain} is real bad news"
  opinions_about_bad_guys << opinion
end

p opinions_about_bad_guys

one_to_ten = (1...10)
squares = []

result_each = one_to_ten.each {|number| squares << number ** 2 }

p one_to_ten
p squares
p result_each
#map method

result_map = one_to_ten.map {|num| num ** 3}

p result_map
p one_to_ten  
