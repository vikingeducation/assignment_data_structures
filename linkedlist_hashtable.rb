module DataStructuresAssignment

  class Node
    attr_reader :data

    def initialize(data)
      @data = data
      @pointer = nil
    end

    def set_pointer(node)
      @pointer = node
    end

  end

  class LinkedList
    attr_reader :head, :tail

    def initialize
      @head = Node.new("First node.")
      @tail = @head
    end

    def insert( node, position )
      case position
      when :head, 0
        node.set_pointer(@head)
        @head = node
      when :tail
        @tail.set_pointer(node)
        @tail = node
      when Integer
        ith_minus_node = find_node(position)
        node.set_pointer(ith_minus_node.pointer)
        ith_minus_node.set_pointer(node)
      end
    end

    def find_node(idx)
      i = 0
      #Iteratively search for position in list.
      node_output = @head
      while i < idx - 1
        node_output = node_output.pointer
        i += 1
      end
      node_output
    end

  end

end
