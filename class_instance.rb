class ActiveRecord
    p self
    def self.table_name
        @table_name
    end
    class << self
        def all
            puts "fetch all"  
        end
        def find_by(criteria,value)
            puts "Find by #{criteria} - #{value}"  
        end
    end
    #self is instance 
    #from instance grab a class
    def get_table_name
        self.class.table_name
    end
end
class << self
    def all
        puts "fetch all"
        
    end
    def find_by(criteria,value)
        puts "Find by #{criteria} - #{value}"
        
    end
end


class User < ActiveRecord
    p self
    #class instance variable
    @table_name = "users"
end
class Address < ActiveRecord
    @table_name = "address"
end

puts User.new.get_table_name
puts Address.new.get_table_name
puts User.table_name
puts ActiveRecord.all
puts ActiveRecord.find_by("me","you")