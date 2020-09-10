#require_relative "./cat.rb"
class Object
    #overriding class method const_missing method
    def self.const_missing(c)
        puts "#{c} is missing. Loading dynamically"
        require_relative "./cat.rb"
        Cat
    end

end
puffy_cat = Cat.new
puffy_cat.talk