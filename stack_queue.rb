class Stack
   attr_accessor :memory
   
   def initialize(array = [])
       @memory = array
   end
    
    def push(element)
        len = @memory.length 
        len += 1
        memo = Array.new(len) #give the array a fixed length
        for i in [0..(len-2)]
            memo[i] = @memory[i]
        end
        memo[len-1] = element #set the last elements to be element
        @memory = memo
        memo = nil
    end
    
    def pop
        len = @memory.length
        len -= 1
        last = @memory[len]
        memo = Array.new(len)
        for i in [0..(len-1)]
            memo[i] = @memory[i]
        end
        @memory = memo
        memo = nil
        return last
    end
    
    def peek(num = 0)
        return @memory[num] if num <= @memory.length - 1
    end
    
    def empty?
        return true if @memory.length == 0
        return false
    end
end


class Queue
   attr_accessor :memory
   
   def initialize(array = [])
       @memory = array
   end
    
    def enqueue(element)
        len = @memory.length 
        len += 1
        memo = Array.new(len) #give the array a fixed length
        for i in [0..(len-2)]
            memo[i] = @memory[i]
        end
        memo[len-1] = element #set the last elements to be element
        @memory = memo
        memo = nil
    end
    
    def dequeue
        len = @memory.length
        len -= 1
        first = @memory[0]
        memo = Array.new(len)
        1.upto(len) do |i|
            memo[i-1] = @memory[i]
        end
        @memory = memo
        memo = nil
        return first
    end
    
    def peek(num = 0)
        return @memory[num] if num <= @memory.length - 1
    end
    
    def empty?
        return true if @memory.length == 0
        return false
    end
end

=begin
s1 = Queue.new(["first", "second", "third", "fourth", "fifth"])
print s1.memory  
puts "\n"
s1.enqueue("sixth")
print s1.memory
puts""
puts s1.dequeue+"\n"
print s1.memory
puts""
puts s1.peek(3)
puts s1.empty?
puts""
print s1.memory + "\n"
=end