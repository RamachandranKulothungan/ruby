require "digest"
module Encryption
    def encrypt(str)
        Digest::SHA2.hexdigest(str)
    end
    def decrypt
        
    end
end

class Demo
    include Encryption
    
end
rajesh = Demo.new
p rajesh.encrypt("secret Message")