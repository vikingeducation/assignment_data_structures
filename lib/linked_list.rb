
Node = Struct.new(:word, :definition, :next_node)

class LinkedList

  attr_accessor :head, :last_node

  def initialize
    @head = nil
    @last_node = nil
  end

  def add_first_node(word, definition)
    @head = Node.new(word, definition) 
    @last_node = @head
  end

  # O(1) for adding last node
  def add_last_node(word, definition)
    if @head.nil?
      add_first_node(word, definition)
    else
      new_node = Node.new(word, definition)
      @last_node.next_node = new_node
      @last_node = new_node
    end
  end

  # O(n) for adding nodes in the middle 
  def add_node(word, definition, index = nil)
    raise ArgumentError, "index must positive" unless index.nil? || index >= 0

    if index == nil || @head.nil?
      add_last_node(word, definition)
    elsif index == 0 
     @head = Node.new(word, definition, @head)
    else
      new_node = Node.new(word, definition, read_node(index))
      prev_node = read_node(index - 1)
      prev_node.next_node = new_node
    end
  end

  def read_node(index)
    counter = 0
    current_node = @head
    while counter < index
      current_node = current_node.next_node
      counter += 1
    end
    current_node
  end

  def remove_node(index)
    prev_node = read_node(index - 1)
    prev_node.next_node = read_node(index).next_node
    read_node(index).next_node = nil    
  end

  # O(1), list in place
  def reverse(node, previous_node = nil)
    target_node = node.next_node
    node.next_node = previous_node
    previous_node = node

    target_node ? reverse(target_node, previous_node) : node

    first_node = @head
    @head = @last_node
    @last_node = first_node
  end

end









