class Stack
  attr_accessor :stack

  def initialize(stack = [])
    @stack = stack
  end

  def end_index
    end_index = @stack.length
  end

  def push_to_stack(input)
    @stack[end_index] = input
  end

  def pop_from_stack
    new_stack = []
    counter = 0
    return_value = @stack[end_index - 1]
    while counter < (end_index - 1)
      new_stack << @stack[counter]
      counter += 1
    end
    @stack = new_stack
    return_value
  end

  def peek
    @stack[end_index-1]
  end

  def empty?
    @stack.length == 0
  end
end
