class Queue
  def initialize
    @queue = []
  end

  def enqueue(item)
    @queue += [item]
    return nil
  end

  def dequeue
    dequeued = @queue[0]
    @queue = @queue[1..-1]
    return dequeued
  end

  def peek_front
    @queue[0]
  end

  def peek_last
    @queue[-1]
  end

  def empty?
    @queue[0].nil?
  end

  def size
    size = 0
    @queue.each do |item|
      size += 1
    end
    size
  end
end

# TESTING RECREATION OF STRING

q = Queue.new
string = "hello"

string.each_char do |char|
  q.enqueue char
end

reloaded_string = ""

until q.empty?
  reloaded_string += q.dequeue
end

puts reloaded_string # => 'hello'