class Queue
  attr_reader :queue

  def initialize
    @queue = []
  end

  def enqueue(element)
    @queue[@queue.length] = element
  end

  def dequeue
    return nil if @queue.empty?

    first_item = peek
    i = 1
    result = []

    while i < @queue.length
      result[i - 1] = @queue[i]
      i += 1
    end

    @queue = result
    first_item
  end

  def peek
    @queue[0]
  end

  def empty?
    @queue.length == 0
  end
end

# Verify can load an unload a string in the same order
string = "hello world"

# load
string_queue = Queue.new
i = 0
while i < string.length
  string_queue.enqueue(string[i])
  puts string_queue.queue.to_s
  i += 1
end

# unload
i = string.length
while i > 0
  string_queue.dequeue
  puts string_queue.queue.to_s
  i -= 1
end