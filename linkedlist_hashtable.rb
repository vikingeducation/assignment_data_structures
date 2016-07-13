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
    attr_reader :head, :tail, :size

    def initialize
      @head = Node.new("First node.")
      @tail = @head
      #Keep track of size.
      @size = 1
    end

    def insert( data, position )
      node = Node.new(data)
      case position
      #Insert at head
      when 0, :head
        node.set_pointer(@head)
        @head = node
      #Insert at tail
      when (@size - 1), :tail
        @tail.set_pointer(node)
        @tail = node
      else
        ith_minus_node = find_node(position)
        node.set_pointer(ith_minus_node.pointer)
        ith_minus_node.set_pointer(node)
      end
      @size += 1
    end

    # O(n)
    def reverse_list
      current = @head
      nxt = current.pointer
      current.set_pointer(nil)
      @last = current
      until nxt.nil?
        prv = current
        current = nxt
        nxt = nxt.pointer
        current.set_pointer(prv)
      end
      @head = current
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
  end

  class HashTable

    def initialize
      @slots = Array.new(1000,nil)
    end

    def hash(data)
      data[0].ord - 97
    end

    def insert(key)
      hashed = hash(key)
      @slots[hashed] = LinkedList.new unless @slots[hashed]
      @slots[hashed].insert(hashed,:tail)
    end

    def render_slots
      @slots.each do |slot|
        if slot
          puts "Node count: #{slot.size}"
          puts slot.render_list
        end
      end
    end

    def define
    end

  end

end


include DataStructuresAssignment

hashtable = HashTable.new
hashtable.insert("Hello, world")
hashtable.render_slots