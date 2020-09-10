menu = { "burger": 3,"samosa": 5,"pav": 2}
p  menu

menu1={:burger=>3, :samosa=>5, :pav=>2}
p menu1

p menu[:burger]
menu[:pepsi] = 10
p menu

p menu.fetch(:samosa)
p menu.fetch(:vadapav, "vadapav not in stock" )
menu2={burger:3, samosa:5, pav:2}

menu2.each do|key,value|
    puts "#{key} = #{value}"
end

menu2.each_key do|key|
    puts key
end

menu2.each_value do|value|
    puts value
end

menu2.each_with_index do|(key,value),index|
    puts "Index: #{index}  key:#{key}  value:#{value}"
end