#reudce/inject
#sum up numbers
#binary operation like that
#x <operator> y

# summing up som numbers

costs = [34.21, 34,23,21, 65.34, 0.20]
total_costs = 0

costs.each do |receipt|
  total_costs += receipt
end

p total_costs

#reduce == inject
 sum = costs.reduce do |total, receipt|
   total + receipt
 end

 p sum

result = ["There", "Can", "Only", "Be", "One"].inject("") do |str, word|
  puts str
  puts word
  str + word
end

p result

p [3,4,12,53,21].reduce {|product,n| product * n}
p [3,4,12,53,21].inject(:*)


# _ is ignored by the interpreter
profits = 20_000 #20,000

expenses = [100, 3400, 213, 50, 21]
p expenses.reduce(profits, :-)
