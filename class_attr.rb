class Gadget

    attr_reader :gadget_type
    attr_writer :gadget_type

    #attr_accessor creates both
    attr_accessor :production_no
    #constructor
    def initialize
        #instance variable @
        @gadget_type = "Electronics"
        @production_no = rand(1..1000)
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