
#First difference
some_proc = Proc.new{|name,age|
    "ypur details are #{name} #{age}"
    }
p some_proc.call("sad")


some_lambda = lambda{|name,age|
    "ypur details are #{name} #{age}"
    }
p some_lambda.call("sad",2)




#second difference
def dietproc
    status = Proc.new{return "you gave in"}
    status.call
    "You completed diet"
end

p dietproc


def dietlambda
    status = lambda{return "you gave in"}
    p status.call
    "You completed diet"
end
p dietlambda
