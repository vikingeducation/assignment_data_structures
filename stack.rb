class Stack

	def initialize 
    @stack = []
	end

  def push(item)
    @stack[length] = item
  end

  def pop
    stack_length = @stack.length

		new_stack = []
		i = 0
		while i < @stack.length - 1
		  new_stack[i] = @stack[i]
		  i += 1
    end

    @stack = new_stack
  end

  def peek
    @stack[length-1]
  end

  def empty?
    @stack.length == 0
  end

end