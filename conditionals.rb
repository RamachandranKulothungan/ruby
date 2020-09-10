#array creation
result = ["heads", "tails"].sample
#sample selects random values
if result == "heads"
   status =:yougotheads
else 
    status = :yougottails
end

p status
p result 


#case
age = 20;
case age
when 18
    puts "adult"
when 10
    puts "child"
else 
    puts "guess"
end

puts "age is #{age}" if age == 20
