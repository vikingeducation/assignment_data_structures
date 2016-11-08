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
    insert_node.next = current_node.next
    #new node points to current_node.next
    current_node.next = insert_node
  end

  def print_list
    counter = 0
    current_node = @head
    loop do
      puts "Node at index #{counter}: #{current_node.data}"
      break if current_node.next.nil?
      current_node = current_node.next
      counter += 1
    end
  end

  def reverse_list()
    arr = []
    current_node = @head

    loop do
      break if current_node.next.nil?
      arr << current_node.next
      current_node = current_node.next
    end
    p arr[0]
  end

end



#s = Entry.new("cat", nil)

l1 = LinkedList.new(Node.new("first_node", nil))
l1.find_node(0)
# l2 = LinkedList.new
# l2.add_node("another first node")
# p l2.head
l1.add_node("second node")
l1.add_node("third node")
l1.insert("1.5 node", 0)
#l1.print_list
l1.reverse_list