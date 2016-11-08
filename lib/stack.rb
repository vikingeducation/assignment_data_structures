Node = Struct.new(:data, :pointer)

class Stack
  attr_reader :head

  def initialize
    @head = nil
  end

  def push(data)
    new_node = Node.new(data, head)
    @head = new_node
  end

  def pop
    current_head = head
    @head = head.pointer
    current_head
  end

  def peek
    head.data unless empty?
  end

  def empty?
    head.nil?
  end

end