class Queue

  def initialize
    @queue = Array.new
  end

  def dequeue
    starting_length = queue.length
    current_index = 0
    new_queue = []
    value = queue[(starting_length - 1)]
    while current_index < ( starting_length - 1 )
      new_queue[current_index] = queue[current_index]
      current_index += 1
    end
    self.queue = new_queue
    value
  end

  def enqueue(value)
    starting_length = queue.length
    current_index = 1
    new_queue = [value]
    while current_index <= starting_length
      new_queue[current_index] = queue[current_index - 1]
      current_index += 1
    end
    self.queue = new_queue
    value
  end

  def peek(front_or_back)
    # front = 1, back = 0
    front_or_back == 0 ? queue[0] : queue[queue.length - 1]
  end

  def empty?
    queue.length == 0
  end

  protected
    attr_writer :queue
  private
    attr_reader :queue

end

def queue_test
  queue = Queue.new
  queue.enqueue(1)
  queue.enqueue(2)
  queue.enqueue(3)
  puts queue.peek(0)
  puts queue.peek(1)
  puts queue.dequeue
  puts queue.peek(1)
end

queue_test