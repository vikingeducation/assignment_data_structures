class Stack
  attr_reader :array

  def initialize
    @array = []
  end

  def push(element)
    @array[@array.length] = element
  end

  def pop
    return nil if @array.empty?

    last_term = peek
    i = 0
    result = []

    while i < @array.length - 1
      result[i] = @array[i]
      i += 1
    end

    @array = result
    last_term
  end

  def peek
    @array[@array.length - 1]
  end

  def empty?
    @array.length == 0
  end
end

# Verify can reverse a string with the stack
string = "hello world"

reverse_string_stack = Stack.new
i = string.length
while i >= 0
  reverse_string_stack.push(string[i])
  i -= 1
end

puts reverse_string_stack.array.join

