squares_proc = Proc.new{|number|
number * number
}
squares_lambda = lambda{|number|
    number * number
    }
p squares_proc.call(4)

p [1,2,3].map(&squares_proc)
p [1,2,3].map(&squares_lambda)


twice = -> (x){2*x}

p twice.call(20)