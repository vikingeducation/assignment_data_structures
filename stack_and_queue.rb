class Stack

  def initialize (max_size)
    @stack_array = []
    @position = 0
    @max_size = max_size
  end

  def push item
    if (@size != max_size-1)
      @stack_array << item
      @position += 1
    else
      raise "Error, stack is full"
    end
  end

  def pop
    unless @size == 0
      @position -= 1
      return @stack_array[position+1]
    end
    raise "Error, stack is empty"
  end

  def peek item
    @stack_array[position-1]
  end

  def full?
    @max_size == @position-1
  end

  def empty?
    @position == 0
  end

  def size
    @max_size
  end

end

class Queue
  def initialize (max_size)
    @queue_array = []
    @filled = 0
    @max_size = max_size
  end

  def enqueue item
    if (@filled != @max_size-1)
      @queue_array << item
      @filled += 1
    end
  end

  def dequeue
    item  = @queue_array[0]
    @queue_array = @queue_array[1..@filled]
    @filled -= 1
    item
  end

  def full?
    @filled == @max_size - 1
  end

  def empty?
    @filled == 0
  end

  def size
    @max_size
  end
end