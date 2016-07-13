class Stack 
  attr_reader :stack

  def initialize
    @stack = []
  end

  def push(num)
    empty? ? @stack[0] = num : @stack[@stack.length] = num
  end

  def pop
    raise "stack is empty bruh" if empty?
    top_item = @stack[@stack.length - 1]
    
    @stack = (@stack.length == 1) ? [] : @stack[ 0..(@stack.length-2)]
    
    top_item
  end

  def peek
    print "stack is empty bruh" if empty?
    @stack[@stack.length - 1]
  end

  def empty?
    @stack.length == 0
  end
end

stack = Stack.new
string = "string"

i = 0 

while i < string.length
  stack.push(string[i])

  i += 1
end

reversed = ""

until stack.empty?
  
  reversed << stack.pop
end

p reversed

