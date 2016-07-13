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
    @stack = (@stack.length == 1) ? [] : @stack[ 0..(@stack.length-2)]
  end

  def peek
    print "stack is empty bruh" if empty?
    @stack[@stack.length - 1]
  end

  def empty?
    @stack.length == 0
  end
end

