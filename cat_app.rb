#require_relative "./cat.rb"
class Object
    #overriding class method const_missing method
    def self.const_missing(c)
        puts "#{c} is missing. Loading dynamically"
        require_relative "./#{c.downcase}"
        #Cat
        klass = const_get(c)
        return klass if klass
        raise "Class not found: #{c}"
    end

end
puffy_cat = Cat.new
puffy_cat.talk

