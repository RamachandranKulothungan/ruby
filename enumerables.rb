#enumerables
    #each
    #map
    #reduce
    #select
require_relative "./my_enumerable" 
class Store
    include MyEnumerable

    attr_reader :snacks
    def initialize
        #internal data structure
        @snacks = []    
    end

    def add_snack(snack)
        @snacks << snack
    end

    #kind of interface
    def each
        snacks.each do|snack|
        yield snack
        end

    end
end

mumbau = Store.new
mumbau.add_snack("juice")
mumbau.add_snack("vadapav")
mumbau.add_snack("samosa")
p mumbau

p mumbau.first
found = mumbau.find do|e|
    e == "juice"
end
p "Found #{found}"
p mumbau.map
p mumbau.select {|snack| snack.downcase.include?("v")}
p mumbau.sort
p mumbau.max
p mumbau.min
p mumbau.zip(mumbau)
p mumbau.class.to_s