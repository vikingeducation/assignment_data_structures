Node = Struct.new(:data, :pointer)

class LinkedList
  attr_reader :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def add_node(data)
    new_node = Node.new(data, nil)
    tail.pointer = new_node unless empty?
    @head = new_node if empty?
    @tail = new_node
  end

  def read(index)
    current_node = head
    index.times do |i|
      current_node = current_node ? current_node.pointer : nil
    end
    current_node ? current_node.data : nil
  end

  def empty?
    head.nil?
  end
end

# Head [] tail
# Head [] -> [+] tail
# Head [] -> [] -> [+] tail

# Create the list
# Read nodes at a particular index (add a printout which tracks the crawler's progress or at least returns the number of steps). In the comments, state the Big-O time of this operation.
# Insert nodes at a particular index or, separately, at the end of the list (so store a reference to the last node). In the comments, state the Big-O time of this operation.
