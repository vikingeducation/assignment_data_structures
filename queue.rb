class Queue
  attr_reader :queue
  def initialize
    @queue = [4,5,6]
  end

  def enqueue(item)
    
    queue_copy = []
    
    i = 0
    while i < @queue.length
      queue_copy[i + 1] = @queue[i]
      i += 1
    end

    queue_copy[0] = item
    @queue = queue_copy
    item
  end

  def dequeue

  end

  def peek
    @queue[@queue.length-1]
  end

  def empty?
    @queue.length == 0
  end

end

q = Queue.new


q.enqueue(1)
p q.queue

q.enqueue(2)

p q.queue