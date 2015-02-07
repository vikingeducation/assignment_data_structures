require 'pry'

class Queue
  def initialize (max_size)
    @queue_array = []
    @filled = 0
    @max_size = max_size
  end

  def enqueue item
    if (@filled != @max_size)
      @queue_array << item
      @filled += 1
    else
      puts "Error, queue is full"
    end
  end

  def dequeue
    if (@filled != 0)
      item  = @queue_array[0]
      @queue_array = @queue_array[1..@filled-1]
      @filled -= 1
      item
    else
      puts "Error, queue is empty"
    end
  end

  def full?
    @filled == @max_size
  end

  def empty?
    @filled == 0
  end

  def size
    @max_size
  end
end

