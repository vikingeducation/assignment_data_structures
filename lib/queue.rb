Node = Struct.new(:data, :pointer)

class Queue
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def enqueue(data)
    new_node = Node.new(data, head)
    @tail.pointer = new_node unless empty?
    @head = new_node if empty?
    @tail = new_node
  end

  def dequeue
    prev_head_data = @head.data
    @head = head.pointer
    prev_head_data
  end

  def peek
    head.data unless empty?
  end

  def empty?
    head.nil?
  end
end
