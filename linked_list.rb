class LinkedList
  attr_accessor :head_node, :tail_node

  def initialize(first_node = nil)
    @head_node = first_node
    @tail_node = first_node
  end

  def add_first_node(data)
    @head_node = Node.new
  end

  def add_node(node)
    @tail_node.reference = node
    @tail_node = node
  end

end

class Node
  attr_accessor :head, :tail

  def initialize
    @data = Struct.new(:word, :definition)
    @reference = nil
  end
end
