class Stack
  # push
  # pop
  # peek
  # empty

  # Basic data: Array
  # LIFO, stack of plates
  # only indexing, length
  # No enumerable

  def initialize(arr)
    @stack = Array.new( arr.length * 4 )
    set_stack
    @next_index = 0
  end

  def set_stack
    for i in (0..arr.length - 1)
      push(arr[i])
    end
  end

  def push(item)
    stack[next_index] = item
    next_index += 1
  end

  def pop
    item = stack[stack.length - 1]
    stack = stack[0..(stack.length - 2)]
    item
  end

  # Top item only
  def peek

  end

  def empty?
  end

  private
  attr_reader :stack
  attr_accessor :next_index
end
