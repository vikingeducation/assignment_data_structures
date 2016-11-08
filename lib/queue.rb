Node = Struct.new(:data, :pointer)

class Queue
  attr_reader :head, :tail
  def initialize
    @head = nil
    @tail = nil
  end
  def enqueue(data)
    new_node = Node.new(data, head)
    @tail.pointer = new_node if tail
    @head = new_node if empty?
    @tail = new_node
  end
  def dequeue

  end
  def peek

  end
  def empty?
    head.nil?
  end
end
