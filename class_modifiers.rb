$global_var = "Global"
class Test
    @count = 1
    
    public
    def method1
        puts "In method1"
    end

    def method2
        puts "In method2"
        private_method1
    end

    private
    def private_method1
        puts "I am private"
        
    end
    def private_method2
        puts "private 2"      
    end

    protected
    def protected_method1
        puts "I am protected method 1"
        
    end
end
#private method is similar to protected in java
class Unit_test < Test
    def run
        puts "Running tests"
        protected_method1
        private_method1
    end
end

class Spec < Test
    def compare(other_object)
        p other_object.protected_method1
    end
    def run
    end

    def method1
    end
    def method2
    end
    def method3
    end
    #alternate way to add access modifiers
    private :method1, :method2
    protected :method3
end

t1 = Test.new
t1.method1
t1.method2
#t1.private_method1

t2 = Unit_test.new
t2.run
spec = Spec.new
spec.compare(t1)
