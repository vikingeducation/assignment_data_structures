class MyQueue
  attr_reader :queue

  def initialize
    @queue = []
  end

  def enqueue(value)
    next_index = @queue.length
    @queue[next_index] = value
    self
  end

  def dequeue
    first_element = @queue[0]
    last_index = @queue.length - 1
    @queue = @queue[1..last_index]
    first_element
  end

  def peek
    return nil if empty?
    @queue[0]
  end

  private

  def empty?
    @queue.length == 0
  end


end
