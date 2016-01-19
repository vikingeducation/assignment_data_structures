class Queue
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @head, @tail = -1, 0
  end

  def dequeue
    if empty?
      nil
    else
      @tail = @tail.succ

      dequeued = @store[@head]
      @store.unshift(nil)
      @store.pop
      dequeued
    end
  end

  def enqueue(element)
    if full? or element.nil?
      nil
    else
      @tail = @tail.pred
      @store[@tail] = element
      self
    end
  end

  def size
    @size
  end

  private

  def empty?
    @head == -1 and @tail == 0
  end

  def full?
    @tail.abs == (@size)
  end
end

x = Queue.new(6)
x.enqueue("s")
x.enqueue("t")
x.enqueue("r")
x.enqueue("i")
x.enqueue("n")
x.enqueue("g")
y = []
y.push(x.dequeue)
y.push(x.dequeue)
y.push(x.dequeue)
y.push(x.dequeue)
y.push(x.dequeue)
y.push(x.dequeue)
puts y.join("")