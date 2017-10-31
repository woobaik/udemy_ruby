# ITERATORS CAN BE CALLED ON
# ARRAY
# RANGES

# each
# each_with_index
# map
# reduce/inject
# select

# Hashes

sidekicks = {
  "Batman" => "Robin",
  "Superman" => "Jimmy Olsen",
  "Captain American" => "Bucky",
  "Conan" => "Andy Richter"
}

sidekicks.each do |hero, sidekick|
  puts "#{sidekick} is the sidekick of #{hero}"
end

sidekicks.each do |pair|
  p pair
end

sidekicks.each_key do |hero|
  puts "#{hero} works alone."
end

sidekicks.each_value do |sidekick|
  puts "#{sidekick} is hanging with the Teen Titans this week."
end

# in older versions of Ruby, hashes are unordered,
# since Ruby 1.9, hashes have been ordered

sidekicks.each_with_index do |(key,value), index|
  puts "#{index + 1}, #{key} and #{value} to the rescue!"
end

longer = sidekicks.select do |hero, sidekick|
  hero.length > sidekick.length
end

p longer

# called map on a hash got an array
book_names = sidekicks.map do |hero,sidekick|
  "#{hero} & #{sidekick} Montly"
end

p book_names
