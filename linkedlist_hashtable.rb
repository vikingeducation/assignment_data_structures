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

    def insert(node,position)
      case position
      when :head
        node.set_pointer(@head)
        @head = node
      when :tail
        @tail.set_pointer(node)
        @tail = node
      when Integer
        
      end
    end

  end

end