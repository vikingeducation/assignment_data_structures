class Queue

  attr_reader :size

  def initialize
    @size = 0
    @queue = []
  end

  def enqueue(element)
    @queue += [element]
    @size += 1
  end

  def dequeue
    dqed = @queue[0]
    @queue = @queue[1..size - 1]
    @size -= 1
    dqed
  end

  def peek
    @queue[0]
  end

  def empty?
    return true if size == 0
    false
  end

end

q = Queue.new
q.enqueue("h")
q.enqueue("e")
q.enqueue("l")
q.enqueue("l")
q.enqueue("o")
5.times do
  puts "#{q.dequeue}"
end