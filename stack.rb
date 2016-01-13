
class Stack
  
  attr_accessor :stack

  def initialize

    @stack = Array.new
  
  end  


  def push(element)
   @stack[@stack.length] = element
  end

  def peek
    @stack[@stack.length-1]
  end

  def pop
   element = peek

   if empty?
      @stack = []
   elsif @stack.length == 1
    @stack = []
   else   
      @stack = @stack[0..@stack.length-2]
   end    
   element
  end

  def empty?
    @stack.length == 0
  end  

end

s = Stack.new
puts "PUSH #{s.push("Hello")}, Stack is #{s.stack}"
puts "PUSH #{s.push("There")}, Stack is #{s.stack}"
puts "PEEK #{s.peek}"
puts "POP #{s.pop}, STACK is #{s.stack}"
puts "PEEK #{s.peek}"
puts "POP #{s.pop}, STACK is #{s.stack}"
puts "PEEK #{s.peek}"
puts "POP #{s.pop}, STACK is #{s.stack}"
puts "PEEK #{s.peek}"