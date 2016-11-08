class Stack

  def initialize stack=[]
    @stack = stack
  end

  def push(value)
    position = @stack.length
    @stack[position] = value
  end

  def pop
    last_value_index = @stack.length - 1
    second_last_index = @stack.length - 2

    last_value = @stack[last_value_index]
    @stack = @stack[0..second_last_index]

    last_value
  end

  def peek(index)
    @stack[index]
  end  

end

Stack.new()
# Stack.new([1,2,3])