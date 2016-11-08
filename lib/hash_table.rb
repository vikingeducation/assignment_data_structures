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

  def insert_node(index, data)

  end

  def access_node_at(index, debug=false)
    current_node = head
    puts "Looping through linked list" if debug
    index.times do |i|
      if current_node
        puts "On step #{i}, found #{current_node.data}" if debug
        current_node = current_node.pointer
      end
    end
    if current_node
      # puts "Returning #{current_node.data} after #{index} steps"
      current_node
    else
      # puts "Nothing to see here. Move along."
      nil
    end
  end

  # Time complexity: O(n)
  def read(index)
    node = access_node_at(index, true)
    if node
      puts "Returning #{node.data} after #{index} steps"
      node.data
    else
      puts "Nothing to see here. Move along."
      nil
    end
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
