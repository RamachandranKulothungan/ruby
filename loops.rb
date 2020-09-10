#loop do
 #   puts "this will run forever. press ctrl+c"
#end

i = 0
loop do
    i +=2
    if i == 4
        next
    end
    puts i 
    if i == 10
        break
    end
end


#While
puts "enter age"
age = gets.chomp.to_i

puts age

while age >=0
    puts age
    age -= 1
end
puts "done"

#until
age = 6
until age < 0 
    puts age
    age-=1
end
puts "done"

#for loop
num = [1,2,3,4,5,6]
for i in num do
    puts num
end