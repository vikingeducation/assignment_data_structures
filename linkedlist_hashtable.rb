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

    def initialize
      @head = Node.new("First node.")
      @tail = nil
    end

    def insert(position)
      case position
      when :head
      when :tail
      when Integer
      end
    end

  end

end