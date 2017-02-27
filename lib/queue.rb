# - Create a Queue class which implements the methods enqueue [ok],
# dequeue [ok] and peek.
# - Add methods for empty?
# - Verify that you can load and unload a string in the same order
# with your queue.

class Queue
  attr_accessor :container

  def initialize(cont = [])
    @container = cont
  end

  def enqueue(val)
    next_ = container.length
    @container[next_] = val
    self
  end

  def dequeue
    queue, item = container[1...container.length], container[0]
    @container = queue
    item
  end

  def peek
    container[0]
  end

  def empty?
    container.length == 0
  end

end
