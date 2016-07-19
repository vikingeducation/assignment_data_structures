# stack.rb

class Stack
  attr_reader :stack
  def initialize
    @stack = []
  end

  def push(value)
    next_index = @stack.length
    @stack[next_index] = value
    self
  end

  def pop
    return nil if empty?
    last_index = @stack.length - 1
    last_elem = @stack[last_index]
    @stack = @stack[0...last_index]
    last_elem
  end

  def peek
    return nil if empty?
    last_index = @stack.length - 1
    @stack[last_index]
  end

  private

  def empty?
    @stack.length == 0
  end

end

