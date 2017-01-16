Node = Struct.new(:word, :definition, :next)

class LinkedList
  attr_accessor :first

  def initialize(first = nil)
    @first = first
    @last = first
  end

  def add_first(word, definition)
    @first = Node.new(word, definition)
    @last = @first
  end

  def add_node(word, definition)
    if @first.nil?
      add_first(word, definition)
    else
      new_node = Node.new(word, definition)
      @last.next = new_node
      @last = new_node
    end
  end

  def get_node_at(i)
    # O(n), linear time.
    current = @first
    prev = nil
    j = 0
    while j < i
      prev = current
      current = current.next
      j += 1
    end
    [current, prev]
  end

  def read_node(i)
    if i == 0
      current = @first
    else
      nodes = get_node_at(i)
      current = nodes[0]
    end
    puts "The word #{current.word} is defined as \"#{current.definition}\""
  end

  def insert_node(node, i)
    # O(n), linear time.
    nodes = get_node_at(i)
    current, prev = nodes[0], nodes[1]
    prev.next = node
    node.next = current
    puts "The word #{node.word} has been inserted"
  end

  def reverse
    # O(n), linear time because it iterates through each node in linked list
    current = @first
    prev = nil
    until current.next.nil?
      next_node = current.next
      current.next = prev
      prev = current
      current = next_node
    end
    @last.next = prev
    @first, @last = @last, @first
  end

  def print_nodes
    current = @first
    i = 0
    until current.nil?
      puts "Node #{i}: #{current.word}"
      current = current.next
      i += 1
    end
  end

end
