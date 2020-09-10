def hug(message,config, &block)
    puts message    
    puts"{"
    p block
    puts"}"
    block.call
    end
    #every method in ruby can take an implicit block parameter
    hug "hello","hey" do |message|
    puts "Thank you #{message}"
    end
    
    
    