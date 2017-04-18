# stack implementation using Ruby arrays
class Stack
  def initialize
    @stack = []
    @len = 0
  end

  def push(data)
    @stack[@len] = data
    @len += 1
  end

  # not efficient as no array clean-up
  def pop
    return false if empty?
    @len -= 1
    @stack[@len]
  end

  def peek
    return false if empty?
    @stack[@len - 1]
  end

  def empty?
    @len.zero?
  end
end

# test string reversal
my_stack = Stack.new
test_word = 'reverse'
test_word.length.times do |iter|
  my_stack.push(test_word[iter])
end
print my_stack.pop until my_stack.empty?
puts
