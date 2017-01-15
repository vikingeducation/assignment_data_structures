class Stack
  def initialize(*args)
    args[0] = args[0] || Array.new
    @is_string = args[0].is_a?(String)? true : false
    @stack = @is_string? args[0].split('') : args[0]
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
    @stack = @is_string? new_stack.join : new_stack
  end

  def peek
    last_el = @stack[@stack.size-1]
  end

  def reverse
    i = @stack.size - 1
    new_stack = Array.new(i + 1)
    @stack.size.times do |j|
      new_stack[j] = @stack[i]
      i -= 1
    end
    new_stack = @is_string? new_stack.join : new_stack
  end

  def empty?
    return true unless @stack
    @stack.size.times do |j|
      return false if j
    end
    true
  end

end
