class Queue
  def initialize(stack)
    @stack = stack
  end

  def enqueue(el)
    new_size = @stack.size + 1
    new_stack = Array.new(new_size)
    new_stack[0] = el
    @stack.size.times do |i|
      new_stack[i+1] = @stack[i]
    end
    @stack = new_stack
  end

  def dequeue
    new_stack = Array.new(@stack.size - 1)
    for i in 1...@stack.size
      new_stack[i-1] = @stack[i]
    end
    @stack = new_stack
  end

  def empty?
    @stack.length == 0
  end

end
