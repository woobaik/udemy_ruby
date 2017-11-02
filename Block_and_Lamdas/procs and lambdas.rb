procs = [
  #Standard procs
  Proc.new {|x,y| x + y},
  proc {p "Hello Squirrels"},
  # lambda (special type of proc)
  lambda{|x|p x ** 2},
  ->(name) {p "Hello " + name}
]
