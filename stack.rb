class Stack
  def initialize(stack)
    @stack = stack
  end

  def pop
    return nil if @stack == []
    last_el = @stack[@stack.length-1]
    @stack[@stack.length-1] = nil
    last_el
  end

  def push(el)
    @stack[@stack.size] = el
  end

  def peek
    last_el = @stack[@stack.size-1]
  end

  def empty?
    @stack.size == 0
  end

end
