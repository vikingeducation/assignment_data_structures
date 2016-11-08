class Stack

  def initialize
    @stack = Array.new
  end

  def push(value)
    stack[stack.length] = value
  end

  def pop
    starting_length = stack.length
    current_index = 0
    new_stack = []
    value = stack[(starting_length - 1)]
    while current_index < ( starting_length - 1 )
      new_stack[current_index] = stack[current_index]
      current_index += 1
    end
    self.stack = new_stack
    value
  end

  def peek
    stack[(stack.length - 1)]
  end

  def empty?
    stack.length == 0
  end

  protected
    attr_writer :stack
  private
    attr_reader :stack
end

def stack_test
  test = Stack.new
  test.push(1)
  test.push(2)
  test.push(3)
  puts test.peek
  puts test.pop
  puts test.pop
  puts test.peek
end

stack_test
