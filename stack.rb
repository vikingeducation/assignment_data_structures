class Stack

  def initialize(stack = [])
    @stack = stack
  end

  def push(item)

    arr = Array.new(@stack.length)
    for i in (0..@stack.length - 1) do 
      arr[i] = @stack[i]
    end

    arr[@stack.length] = item
    @stack = arr

  end

  def pop

    raise 'The stack is empty!' if empty?

    item = @stack[@stack.length - 1]
    @stack = @stack[0...@stack.length - 1]

    item

  end

  def peek

    raise 'The stack is empty!' if empty?

    @stack[@stack.length - 1]

  end

  def empty?

    @stack.length == 0
    
  end

end