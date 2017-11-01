# Everything is an object

# Blocks are not objects

cube = Proc.new {|x| x ** 3}

p cube.call(2)
p cube.call(4)
p  cube.(9)


square = Proc.new {|x| x ** 2}

def method_with_proc(p1, arg1)
  p1.call(arg1)
end

def method_with_procs(p1, arg1, p2, arg2)
  p p1.call(arg1)
  p p2.call(arg2)
end


p method_with_proc(cube, 23)
p method_with_procs(cube, 12, square, 11)

# use as a proc as a block
# & to convert proc <---> block

p (1..10).map(&cube)
p (1..20).select(&:even?)

p odd = :odd?.to_proc
# {|x| x.odd?}
p (1..11).map(&odd)


def takes_a_block(&block)
  block.call
end 
