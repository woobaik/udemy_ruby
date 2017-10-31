(1..10).map {|x| x ** 2}

def square(x)
  x ** 2
end

p square(3)
p square(12)
p square(100)

def do_something(x)
  p block_given?
  yield(x) if block_given?
end

p do_something(3) {|x| x ** 2}
p do_something(12) {|x| puts "I love  " + x.to_s}
p do_something(14)

def sum_result(x,y)
  x_result = yield(x)
  y_result = yield(y)
  x_result + y_result
end

p sum_result(2,3) {|x| x ** 2}
