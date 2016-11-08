
# use a struct as node
Node = Struct.new(:data, :next)

# creates unordered linked-list
class LinkedList

  # track first & last nodes for more efficient operations
  attr_accessor :head, :last

  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end

  def add_first_node(data)
    @head = Node.new(data, nil)
    @last = head
  end

  def add_node(data)
    unless head
      add_first_node(data)
    else
      # create node
      new_node = Node.new(data)
      # link new node to end of the list
      @last.next = new_node
      # set last to new node
      @last = new_node
    end
  end

  def remove_node(index)
    # start at head, index 0
    current_position = 0
    current_node = @head

    # crawl to index position
    while current_position < index
      previous_node = current_node
      current_node = current_node.next
      current_position += 1
    end

    # perform pointer reassignment
    next_node = current_node.next
    current_node.next = nil         # clear pointer ??? not gc automatically?
    previous_node.next = next_node
  end

  def find_node(index)
    # start at head, index 0
    current_position = 0
    current_node = @head

    # crawl to index position
    while current_position < index
      current_node = current_node.next
      current_position += 1
    end

    # return node
    current_node
  end

  def print_list
    # start at head
    current_node = @head

    # crawl through all nodes
    loop do
      puts current_node
      break unless current_node.next
      current_node = current_node.next
    end
  end

end


# Build a list with an initial node
l1 = LinkedList.new(Node.new("First node!", nil))
## Verify that the node exists now
l1.find_node(0)
## Initialize another list to test our `add_new_node` method
l2 = LinkedList.new
l2.add_node("Other First node...")
l2.head
## Add some more nodes
l1.add_node("Second Node")
l1.add_node("Third Node")
l1.add_node("Fourth Node")
# Find node
l1.find_node(3)

## Double check our list
l1.print_list

## Remove a node
l1.remove_node(2)  # "Third Node"
l1.print_list
