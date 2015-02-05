class Stack
  def initialize
    @stack = []
  end

  def push(item)
    @stack += [item]
    return nil
  end

  def pop
    popped = @stack[-1]
    @stack = @stack[0..-2]
    return popped
  end

  def peek
    @stack[-1]
  end

  def empty?
    @stack[0].nil?
  end

  def size
    size = 0
    @stack.each do |item|
      size += 1
    end
    size
  end
end

# Add methods for empty? and size? which use nothing but simple array methods (so no helper methods!). You'll get to practice your iteration!
# Verify that you can reverse a string with your stack.