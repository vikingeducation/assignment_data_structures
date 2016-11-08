
class Stack

  def initialize
    @stack = Array.new
  end

  def push
  end

  def pop
    value = stack[(stack.length - 1)]
    # rebuild stack
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
  puts

end
