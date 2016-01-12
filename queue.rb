class Queue
  attr_accessor :queue

  def initialize
    @queue = []
  end

  def enqueue(element)
    @queue[@queue.length] = element
  end

  def dequeue
    element = @queue[0]
    if empty?
      @queue = []
    elsif @queue.length == 1
      @queue = []
    else
      @queue = @queue[1..@queue.length-1]
    end
    element
  end

  def peek
    @queue[0]
  end

  def empty?
    @queue.length == 0
  end
end

q = Queue.new
puts "enqueue #{q.enqueue("Hello")}, queue is #{q.queue}"
puts "enqueue #{q.enqueue("There")}, queue is #{q.queue}"
puts "PEEK #{q.peek}"
puts "dequeue #{q.dequeue}, queue is #{q.queue}"
puts "PEEK #{q.peek}"
puts "dequeue #{q.dequeue}, queue is #{q.queue}"
puts "PEEK #{q.peek}"
puts "dequeue #{q.dequeue}, queue is #{q.queue}"
puts "PEEK #{q.peek}"
puts "Empty #{q.empty?}"