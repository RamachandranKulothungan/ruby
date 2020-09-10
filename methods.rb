def greeting(message)
    "Hello #{message}"  #atomatically returned
end

p greeting ("good morning")


def sum(*args)
    puts args.inspect
    result = 0
    args.each do |item|
        result +=item
    end
    result
end

puts sum(1,2)
puts sum(1,2,3,4)
puts sum(1,2,3,4,5,6)