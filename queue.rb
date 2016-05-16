class MyQueue

  attr_reader :queue, :length

  def initialize
    @queue = []
    @length = 0
  end

  def enqueue(item)
    @queue[@length] = item
    @length += 1
    @queue
  end

  def dequeue
    if empty?
      puts "Queue empty!"
    else
      counter = 1
      while counter <= @length
        @queue[counter-1] = @queue[counter]
        counter += 1
      end
      @length -= 1
      @queue
    end
  end

  def empty?
    @length == 0
  end

end
