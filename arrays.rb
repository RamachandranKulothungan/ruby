#arrays creation
fruits = ["apple", "mango", "orange"]
puts fruits[1]
puts fruits.pop #removes last item, shift removes first element
puts"-------------------------------"

fruits.push("grapes")
fruits << "banana"
puts fruits
puts"-------------------------------"

puts fruits.shuffle
puts"-------------------------------"
puts fruits
puts"-------------------------------"

puts fruits.shuffle!
puts"-------------------------------"
puts fruits

#map methods
fruits2 = fruits.map do|fruit|
    fruit.to_sym
end

p "Fruits 2: ", fruits2 

nums = [1,2,3,4,5,6]
squares = nums.map do|n|
    {index: n*n }
end
puts squares
puts squares[0][:index]

nums = [1,2,3,4,5,6]
squares = nums.select do|n|
    n<4
end
puts squares


nums = [1,2,3,4,5,6]
squares = nums.map do|n|
    n<4
end
puts squares
