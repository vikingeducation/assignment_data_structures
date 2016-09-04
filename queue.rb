class Queue
  def initialize
    @array = []
  end

  def enqueue(obj)
    arr_length = @array.length
    @array[arr_length] = obj
  end

  def dequeue
    return nil if @array.empty?

    length = @array.length
    @array[0] = nil
    peek
  end

  def peek
    return @array[0]
  end

  private

  def empty?
    @array.length == 0
  end
end

q = Queue.new

p q.enqueue(1)
p q.enqueue(2)
p q.enqueue(3)

p q.dequeue
p q.peek
