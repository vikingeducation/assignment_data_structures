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
    #add new entry
    #change pointer of previous to point to new end
    if @head.nil?
      add_first_node(data)
    else
      new_node = Node.new(data)
      @last.next = new_node
      @last = new_node
    end

    puts "Added node with value: #{data}"
  end

  def find_node(index)
    counter = 0
    current_node = @head
    while counter < index
      current_node = current_node.next
      puts "At index #{index} current value is #{current_node.data}"
      counter += 1
    end

    puts "Found node at index #{index} with current value #{current_node.data}"
    current_node
  end


  def insert(data, index)
    counter = 0
    current_node = @head
    while counter < index
      current_node = current_node.next
     # puts "At index #{index} current value is #{current_node.data}"
      counter += 1
    end
    insert_node = Node.new(data)
    insert#new node points to current_node.next
    current_node.pointer = Node.new(data)
  end

end



#s = Entry.new("cat", nil)

l1 = LinkedList.new(Node.new("first_node", nil))
l1.find_node(0)
l2 = LinkedList.new
l2.add_node("another first node")
p l2.head
l1.add_node("second node")
