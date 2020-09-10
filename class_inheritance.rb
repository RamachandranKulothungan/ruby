class Animal
    attr_accessor :kingdom
    def initialize
        puts "Animal created"
        @kingdom = "Animal kingdom"        
    end
    def eat
        puts "I am hungry"
    end
    def walk
        puts "I walking"
    end
end
#inheriting class
class Cat < Animal
    
end
class Dog < Animal
    def initialize
        super 
        puts "Dog created"
           
    end
    #override walk method
    def walk
        puts "Not in mood "
        super
    end    
end

cat1 = Cat.new
cat1.walk

dog1 = Dog.new
dog1.walk
puts dog1.kingdom