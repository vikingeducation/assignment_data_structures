class Queue
  attr_accessor :data
  def initialize
    @data = []
  end

  def enqueue(item)
    data << item
  end

  def dequeue
    data.delete_at(0)
  end

  def peek
    data[0]
  end

  def empty?
    data.length == 0
  end
end

str = "hello"
p str
s = Queue.new
str.split("").each { |c| s.enqueue(c) }
deq_str = ""
(str.length).times {deq_str << s.dequeue }
p deq_str