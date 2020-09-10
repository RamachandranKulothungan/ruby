module MyEnumerable
    def map(&block)
       result = []
       each do |ele|
        result << ele
       end
       result
    end
    def find(&block)
        result = nil
        found = false
        each do |ele|
            if block.call(ele)
                result = ele
                found = true
                break
            end
        end
        found ? result :nil

    end
    def first 
    end
    def select(&block)
        result = nil
        each do |ele|
            if block.call(ele)
                result << ele
            end
        end
        result
    end
    #parameter to find method
    def find_all
        
    end
    def reduce
        
    end
    def collect
        
    end

    def sort

        
    end
    def max

        
    end

    def min
        
        
    end
end