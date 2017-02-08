class Queue
  def initialize(stack)
    @stack = stack
  end

  def enqueue(el)
    @stack[@stack.size] = nil
    (@stack.size-1).downto(1) do |i|
      @stack[i] = @stack[i-1]
    end
    @stack[0] = el
    @stack
  end

  def dequeue
    return nil if @stack.empty?
    first = @stack[0]
    (0...@stack.size).each do |i|
      @stack[i] = @stack[i+1] if @stack[i+1]
    end
    @stack = @stack.slice(0...@stack.size-1)
    first
  end

  def empty?
    @stack.length == 0
  end

end
