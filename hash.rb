Node = Struct.new(:data, :next)

class LinkedList

  attr_accessor :head, :last

  def initialize(first_node=nil)
    @head = first_node
    @last = first_node
  end


  def add_first_node(data)
    @head = Node.new(data, nil)
    @last = @head
  end


  def add_node(data)
    if @head.nil?
      add_first_node(data)
    else
      new_node = Node.new(data)
      # point last node to the new one
      @last.next = new_node
      # new node is now last node
      @last = new_node
    end
    puts "added node with value: #{data}"
  end


  # Big O(n) because the worst case would be to traverse through entire list of nodes.
  def read_node(index)
    counter = 0
    current_node = @head

    while counter < index
      puts "#{current_node.data}"
      current_node = current_node.next
      counter += 1
    end
    puts "Found node at index #{index} with value #{current_node.data}"
    current_node
  end


  def insert_node(data, index)
    # {data|next=1} {data|next=2} {data|next=3}
    counter = 0
    current_node = @head
    new_node = Node.new(data)
    prev_node = nil

    while counter < index
      prev_node = current_node
      current_node = current_node.next
      counter += 1
    end

    prev_node.next = new_node
    new_node.next = current_node

  end

end

l1 = LinkedList.new(Node.new("first", nil))
l1.add_node("Second node!")
l1.read_node(0)
l1.read_node(1)