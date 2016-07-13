class Queue
  attr_reader :queue
  def initialize
    @queue = []
  end

  def enqueue(item)
    queue_copy = []
    
    i = 0
    while i < @queue.length
      queue_copy[i + 1] = @queue[i]
      i += 1
    end

    queue_copy[0] = item
    @queue = queue_copy
    item
  end

  def dequeue
    raise "queue is empty bruh" if empty?
    first_item = @queue[@queue.length - 1]
    
    @queue = (@queue.length == 1) ? [] : @queue[ 0..(@queue.length-2)]
    
    first_item

  end

  def peek
    print "queue is empty bruh" if empty?
    @queue[@queue.length-1]
  end

  def empty?
    @queue.length == 0
  end

end

q = Queue.new

str = "string"
new_str = ""

i = 0

while i < str.length 
  q.enqueue( str[i] )
  i += 1
end

until q.empty?
  new_str << q.dequeue
end

p new_str













