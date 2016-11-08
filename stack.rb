Node = Struct.new(:data, :pointer)

class Stack
  def initialize
    @head = nil
  end
  def push(data)
    new_node = Node.new(data, head)
    @head = new_node
  end
  def pop

  end
  def peek

  end
  def empty?

  end
  private
  attr_reader :head
end
