Node = Struct.new(:word, :definition, :pointer)

class LinkedList

  attr_accessor :head, :tail, :length

  def initialize(first_node = nil)
    @head =  first_node 
    @tail = first_node 
  end

  def add_first_node(word, definition)
    @head = Node.new(word, definition, nil)
    @tail = @head 
  end

  def add_node(word, definition)
    if @head.nil?
      add_first_node(word, definition)
    else
      new_node = Node.new(word, definition, nil)
      @tail.pointer = new_node
      @tail = new_node
    end
  end

  def find_node_by_word(word)
    current = @head
    while current.pointer
      current = current.pointer
      return current if current.word == word
    end
    nil
  end

  def find_node_by_index(index)
    current = @head
    0.upto(index-1) do |i|
      current = current.pointer
    end
    current
    # Linear time O(n)
  end

  def insert_node(word, definition, index)
    new_node = Node.new(word, definition, nil)    
    node_before = find_node_by_index(index-1)
    node_after = node_before.pointer
    new_node.pointer = node_after
    node_before.pointer = new_node
    # Ideally constant time O(1), 
    # Actually O(n) because traversal is required to read
  end

  def append_node(word, definition) 
    if @head.nil?
      add_first_node(word, definition)
    else
      new_node = Node.new(word, definition, nil)
      @tail.pointer = new_node
      @tail = new_node
    end
    # Constant time O(1) 
  end

  # def reverse
  #   unless @head
  #     puts "Nothing to reverse."
  #   end
  #   prev = @head
  #   curr = @head.pointer
  # end

  def print_nodes
    unless @head
      puts "No nodes to print."
      return
    end
    current = @head
    step = 0
    until current.nil? do 
      step += 1
      puts "At node #{step}, word is \"#{current.word}\", definition is \"#{current.definition}\""
      current = current.pointer
    end
    step
    # Linear time O(n)
  end

end

