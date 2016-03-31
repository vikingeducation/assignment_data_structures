class Queue
  attr_accessor :queue, :length
  def initialize
    @queue = []
    @length = 0
  end

  def enqueue element
    @queue[@length] = element
    @length += 1
    puts "you enqueue #{element}"
    @queue[@length-1]
  end

  def dequeue
    if empty?
      puts "it's empty!"
    else
      pop_val = @queue[0]
      @queue[0] = nil
      count = 1
      while count < @length
        @queue[count-1] = @queue[count]
        count += 1
      end
      @length -= 1
      puts "you dequeue #{pop_val}"
      pop_val
    end
  end

  def peak
    @queue[0]
  end

  def empty?
    return true if @length == 0
  end
end

new_queue = Queue.new
"hello".split("").each do |char|
  new_queue.enqueue char
end

new_queue.length.times do
  new_queue.dequeue
end
