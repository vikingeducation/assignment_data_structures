class Stack

  def initialize(stack=[])
    @stack=stack
  end

  def push(item)
    @stack[@stack.length] = item
  end

  def pop
    last_item=@stack[@stack.length-1]
    if @stack.length > 1
      @stack = @stack[0..@stack.length-2]
      last_item
    else
      @stack = []
      last_item
    end
  end

  def peek(index)
    raise ArgumentError if index>@stack.length
    @stack[@stack.length - index]
  end

  def empty?
    @stack.length == 0
  end

end

test_string = "hello"
test_stack = Stack.new(test_string.chars)
reversed_string = ""
until test_stack.empty?
  reversed_string += test_stack.pop
end
puts "The original string was #{test_string}."
puts "The reversed string is #{reversed_string}."