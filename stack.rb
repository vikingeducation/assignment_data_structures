class Stack
  def initialize
    @stack = []
  end

  def push(item)
    @stack += [item]
    return nil
  end

  def pop
    popped = @stack[-1]
    @stack = @stack[0..-2]
    return popped
  end

  def peek
    @stack[-1]
  end

  def empty?
    @stack[0].nil?
  end

  def size
    size = 0
    @stack.each do |item|
      size += 1
    end
    size
  end
end

# TESTING REVERSAL OF STRING

s = Stack.new
string = "hello"

string.each_char do |char|
  s.push char
end

reversed_string = ""

until s.empty?
  reversed_string += s.pop
end

puts reversed_string # => 'olleh'