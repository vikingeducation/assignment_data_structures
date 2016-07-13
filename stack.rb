class Stack
  def initialize
    @stack = []
  end

  def last_index
    @stack.length - 1
  end

  def push(item)
    @stack[@stack.length] = item
    self
  end

  def pop
    last_item = @stack[last_index]
    @stack.delete_at(last_index)
    last_item
  end

  def peek
    @stack[last_index]
  end

  def empty?
    @stack.length == 0
  end

  def reverse
    index = last_index
    return_array = []
    while last_index > -1
      return_array << pop
      index -= 1
    end
    @stack = return_array
  end
end
