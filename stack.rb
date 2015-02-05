class Stack
  attr_reader :size

  def initialize
    @stack = []
    @size = 0
  end

  def push(item)
    @stack += [item]
    @size += 1
  end

  def pop
    popped = @stack[@size-1]
    @stack = @stack[0..-2]
    @size -= 1
    return popped
  end

  def peek
    @stack[@size-1]
  end

  def empty?
    size == 0
  end
end

# TESTING REVERSAL OF STRING

s = Stack.new
string = "hello"

string.each_char do |char|
  s.push char
end

reversed_string = ""

while s.size > 0
  reversed_string += s.pop
end

puts reversed_string # => 'olleh'