# iterators for filtering data
numbers = [1220, 320, 424, 150, 283, 231, 48349]
p numbers.map {|n| n.odd?}
odds = numbers.select {|n| n.odd?}
evens = numbers.reject {|n| n.odd?}

p odds
p evens

#iterators
# take a block
# execute the block for each member of the array
# select, reject are iteratiors

# iterators execute the block for each element of the object
#sometimes they stop early. if they meet false value
p (1..10).any? {|n| n.odd?}

doubles = (1..10).map {|n| n * 2 }
doubles.all? {|n| n.even?}

#check divisibility by 7
#use %
# select -> returns all the member of the block
# find, detect the first number
p (1..10).find do |n|
  n % 7 == 0

end
