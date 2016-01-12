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
      # point the last node to our new one
      @last.next = new_node
      # set our new node as the official last node
      @last = new_node
    end
    puts "Added node with value: #{data}"
  end

  # Remove the node at this position
  # (assume there is one there)
  # We'll crawl the list and save the prev
  def remove_node(index)
    # start at the head
    counter = 0
    current_node = @head
    prev_node = nil
    # crawl to the index position
    while counter < index
      prev_node = current_node
      current_node = current_node.next
      counter += 1
    end
    # now perform the removal (cutting out current_node)
    next_node = current_node.next
    current_node.next = nil       # clear the pointer
    prev_node.next = next_node

    puts "Removed node at index #{index} with value: #{current_node.data}"
  end

  # Return the node at that position, like in an array
  # (no error handling)
  def find_node(index)
    # start at the head
    counter = 0
    current_node = @head
    # crawl to the index position
    # outputs each node value for visibility
    while counter < index
      current_node = current_node.next
      counter += 1
    end
    puts "Found node at index #{index} with value: #{current_node.data}"
    current_node
  end

  # Crawls and prints the list
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

end