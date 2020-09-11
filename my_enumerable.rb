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
        first= nil
        each do |ele|
            first = ele
            break
        end
        first
    end
    def select(&block)
        result = []
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
    def zip(a)
        arr = []
        array = a.map
        each do |ele|
            array.each do
                arr << [ele,array[0]]
                array.shift
                break
            end
        end
        arr
    end


    def sort
    end

    def max
        max = first
        each do |a|
            if a > max 
                max = a
            end
        end
        max
        
    end

    def min
        min = first
        each do |a|
            if a < min
                min = a
            end
        end
        min
    end
end