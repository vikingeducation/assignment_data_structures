class Stack
  def initialize(stack)
    @stack = stack
  end

  def pop
    return nil if @stack == []
    new_size = @stack.size-1
    new_stack = Array.new(new_size)
    last_el = @stack[new_size]
    new_size.times do |i|
      new_stack[i] = @stack[i]
    end
    @stack = new_stack
    last_el
  end

  def push(el)
    new_size = @stack.size + 1
    new_stack = Array.new(new_size)
    new_size.times do |i|
      new_stack[i] = @stack[i]
    end
    new_stack[new_size-1] = el
    @stack = new_stack
  end

  def peek
    last_el = @stack[@stack.size-1]
  end

  def empty?
    @stack.size == 0
  end

end
