module DataStructuresAssignment

  class Node
    attr_reader :data, :pointer

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
      #Keep track of size.
      @size = 1
    end

    def insert( node, position )
      case position
      #Insert at head
      when 0
        node.set_pointer(@head)
        @head = node
      #Insert at tail
      when @size - 1
        @tail.set_pointer(node)
        @tail = node
      when Integer
        ith_minus_node = find_node(position)
        node.set_pointer(ith_minus_node.pointer)
        ith_minus_node.set_pointer(node)
      end
      @size += 1
    end

# A -> B -> C -> D
# A...B...C... D? If C.pointer.pointer == nil, stop.
# C.pointer.pointer = C.
# C.pointer = ...B?

# i = @size-1
# node = @tail
# node.pointer = find_node(i-1)

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

    def render_list
      node = @head
      idx = 0
      while node
        puts "--NODE##{idx}--"
        puts "Data: #{node.data}"
        puts "Pointer: #{node.pointer}"
        idx += 1
        node = node.pointer
      end
    end

    def reverse
    end

  end

end


include DataStructuresAssignment

list = LinkedList.new
2.times do
  list.insert(Node.new("Another node at the head."), 0)
end
list.insert(Node.new("Another node at the tail."), 2)
list.insert(Node.new("Another node at the tail."), 3)
2.times do
  list.insert(Node.new("This is in the middle."), 2)
end
list.render_list