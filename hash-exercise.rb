family = {
    sisters: ["s1","s2","s3"],
    brothers:["b1","b2","b3"],
    uncles:["u1","u2","u3"],
    aunts:["a1","a2","a3"],
}

p family
immediate = []
family.each_with_index do|(key,value),index|
    if key == :sisters || key == :brothers
        immediate[index] = value
    end
end
p immediate.flatten


immediate = family.select do|(key,value),index|
    key == :sisters || key == :brothers
end
p immediate.values.flatten