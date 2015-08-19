class Queue

  def initialize(queue = [])
    @queue = queue
  end

  def enqueue(item)

    arr = Array.new(@queue.length)
    for i in (0..@queue.length - 1)
      arr[i] = @queue[i]
    end

    arr[@queue.length] = item
    @queue = arr

  end

  def dequeue

    raise 'Queue is empty!' if empty?

    item = @queue[0]
    @queue = @queue[1..@queue.length - 1]
    item

  end

  def peek

    raise 'Queue is empty!' if empty?

    @queue[0]

  end

  def empty?

    @queue == 0

  end

end