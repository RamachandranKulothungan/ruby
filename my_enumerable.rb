module MyEnumerable
    def map(&block)
       result = []
       each do |ele|
        result << (ele) 
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
                result = ele
                break
            end
        end
        result
    end
end