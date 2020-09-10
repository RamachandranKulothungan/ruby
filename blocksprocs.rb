def hug(message)
puts message    
puts"{"
yield "hey" #calls the block of code
puts"}"
yield
end


#every method in ruby can take an implicit block parameter
hug "hello" do |message|
puts "Thank you #{message}"
end



my_proc = proc do|a|
    puts "This is proc #{a}" 
end

#my_proc.call

hug "proc", &my_proc