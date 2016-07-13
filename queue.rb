class Queue
  def initialize
    @queue = []
  end

  def last_index
    @queue.length - 1
  end

  def enqueue(item)
    @queue[@queue.length] = item
    self
  end

  def dequeue
    @queue.delete_at(0)
  end

  def peek
    @queue.first
  end

  def empty?
    @queue.length == 0
  end
end
