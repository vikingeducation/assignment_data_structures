class Stack
  attr_accessor :stack

  def initialize
    @stack = []
  end

  def index
    index = @stack.length
  end

  def push_to_stack(input)
    @stack[index] = input
  end

  def pop_from_stack
    new_stack = []
    while empty? == false
    end
  end

  def empty?
    @stack.length == 0
  end
end
