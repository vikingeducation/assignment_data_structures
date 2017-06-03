class Stack
  def initialize
    @data = Array.new()
  end

  def empty?
    @data.length == 0
  end

  def push(x)
    @data << x
  end

  def pop
    response = peek
    @data = @data[0..@data.length-2]
    response
  end

  def peek
    response = @data[@data.length-1]
  end

  def length
    @data.length
  end
end

stack = Stack.new

# reversing a string

def reverse_string(i=0,
  string = "This is the lovely string I am going to reverse.",
  str_reversed = "")

  while i < string.length do
    stack.push(string[i])
    i += 1
  end

  stack.length.times {
    str_reversed += stack.pop
  }

  puts str_reversed
end
