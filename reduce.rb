family = {
    sisters: ["s1","s2","s3"],
    brothers:["b1","b2","b3"],
    uncles:["u1","u2","u3"],
    aunts:["a1","a2","a3"],
}

#reduce or its alias 'inject'
#returns data in any form we want
#initial value is optional
near_members = family.reduce([]) do|arr, (k,v)|
    p arr
    if (k == :sisters || k == :brothers)
    arr.push(v) #arr+=v gives flattened output
    end
    arr
end

p near_members
p "---------------------------------"
count = 0
nums = [1,2,3,4,5]
near_members2 = nums.reduce do|prev, curr|
    p "#{prev}"
    prev+curr
end

p near_members2

p "---------------------------------"
nums = [1,2,3,4,5]
near_members2 = nums.reduce(0) do|prev, curr|
    p "#{prev}"
    prev+curr
end

p near_members2