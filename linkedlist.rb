Node = Struct.new(:data, :next)

class LinkedList
  attr_accessor :head, :last

  # Create
  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end

  # Time complexity of find_node is O(n),
  # because to find node at index we need to traverse the list
  def find_node(index)
    counter = 0
    current_node = @head

    while counter < index
      current_node = current_node.next
      counter += 1
    end

    puts "Found node at index #{index} with value: #{current_node.data}"
    #current_node
  end

  # Time complexity of insert_node is O(1)
  def insert_node(data, index = @last)
    if @head.nil?
      @head = Node.new(data, nil)
      @last = @head
    else
      new_node = Node.new(data)
      @last.next = new_node

      @last = new_node
    end
  end

  def add_first_node(data)
    @head = Node.new(data, nil)
    @last = @head
  end

  # Time complexity of print_list is O(n)
  def print_list
    current = @head.next
    counter = 0

    while current
      puts "Node at index #{counter}: #{current.data}"
      current = current.next
      counter += 1
    end
  end

end
