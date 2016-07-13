class Queue
  attr_reader :queue

  def initialize(queue= [] )
    @queue = queue
  end


  def enqueue(item)
    counter = @queue.length
    until counter == 1
      @queue[counter] = @queue[counter - 1]
      counter -= 1
    end
    @queue[0] = item
  end


  def dequeue
  end

  def empty?
  end


end

q = Queue.new([1,2,3,4])
p q.enqueue(5)
p q.queue