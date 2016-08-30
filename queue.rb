class Queue

  def initialize
    @arr = []
  end

  def enqueue(object)
    @arr[@arr.length] = object
    @arr
  end

  def dequeue
    if @arr.length == 1
      @arr = nil
    else
      @arr = @arr[1..@arr.length - 1] unless empty?
    end
    @arr
  end

  def empty?
    @arr == nil
  end

end

queue = Queue.new

p queue.enqueue(1)
p queue.enqueue(2)
p queue.enqueue(3)
p queue.dequeue
p queue.dequeue
