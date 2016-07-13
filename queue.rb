class Queue
  attr_reader :queue

  def initialize(queue= [] )
    @queue = queue
  end


  def enqueue(item)
    counter = @queue.length
    until counter == 0
      @queue[counter] = @queue[counter - 1]
      counter -= 1
    end
    @queue[0] = item
  end


  def dequeue
    last_item = @queue[@queue.length - 1]
    if @queue.length > 1
      @queue = @queue[0..@queue.length - 2]
      last_item
    else
      @queue = []
      last_item
    end
  end

  def empty?
    @queue.length == 0
  end


end

q = Queue.new
test_string = "hello"
test_string.chars do |letter| 
  q.enqueue(letter)
end
same_ordered = ""
until q.empty?
  same_ordered << q.dequeue
end

p test_string
p same_ordered