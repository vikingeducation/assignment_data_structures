class Queue
  attr_reader :size

  def initialize
    @queue = []
    @size = 0
  end

  def enqueue(item)
    @queue += [item]
    @size += 1
  end

  def dequeue
    dequeued = @queue[0]
    @queue = @queue[1..(size-1)]
    @size -= 1
    return dequeued
  end

  def peek_front
    @queue[0]
  end

  def peek_last
    @queue[(size-1)]
  end

  def empty?
    size == 0
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