class Gadget
    #constructor
    def initialize
        #instance variable @
        @gadget_type = "Electronics"
        @production_no = rand(1..1000)
    end  

    #explicit getter method
    def gadget_type
        @gadget_type
        
    end

    def production_no
        @production_no    
    end

    #explicit setter method
    def gadget_type=(type)
        @gadget_type = type   
    end

    def production_no=(type)
        @production_no = type   
    end
    
    #overriding to_s
    def to_s
        "Gadget #{@production_no} of type #{@gadget_type}" 
    end
end

phone = Gadget.new
p phone.to_s

laptop = Gadget.new
p laptop.to_s

p laptop.gadget_type

laptop.gadget_type= "laptop"
p laptop.gadget_type
laptop.production_no= 160
p laptop.production_no