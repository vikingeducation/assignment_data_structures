class Stack
  # attr_reader :full_stack
  def initialize
    @full_stack = []
  end

  def push data
    length = @full_stack.length
    @full_stack[length] = data
    @full_stack
  end

  def pop
    length = @full_stack.length unless empty?
    if length == 1
      @full_stack = nil
    else
      @full_stack = @full_stack[0..length - 2] unless empty?
    end
    @full_stack
  end

  def empty?
    @full_stack == nil
  end

end
