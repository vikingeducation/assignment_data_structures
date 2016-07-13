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

  


end