$everywhere = "Global"
class ActiveRecord
    @@count = 1;
    p self
    puts "Is it strange"
    attr_accessor :record,:name
    def initialize(name)
        @record = ["users","name"]
        @name = name
        @@count+=1
    end

    #static method
    def self.all
        p self
        puts "All" 
    end

    def self.count
        @@count
    end
    def self.count=(value)
        @@count= value
    end
    def save
        @record << self.name
        p self
        puts "Save" 
    end

end
ActiveRecord.all
ar = ActiveRecord.new("rc")
ar.save
ar.record
ar.name
p ActiveRecord.count

class User < ActiveRecord
end
p User.count
User.count= 100
p User.count
p ActiveRecord.count