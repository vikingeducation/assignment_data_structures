
Node = Struct.new(:data, :next)


class LinkedList 

  attr_accessor :head, :tail #, :num_nodes

  def initialize(first_node = nil)
    @head = first_node
    @tail = first_node
    #@num_nodes = 0
  end

   # To add the first node
  def add_first_node(data)
    @head = Node.new(data, nil)
    @tail = @head
  end

  # Add a node to the end of the list
  def add_node(data)
    # change tactics if we're adding the first node
    if @head.nil?
      add_first_node(data)
    else
      new_node = Node.new(data, nil)
      # point the tail node to our new one
      @tail.next = new_node
      # set our new node as the official tail node
      @tail = new_node
    end
    puts "Added node with value: #{data}"
  end

  def get_size
    size = 0
    current_node = @head
    loop do 
      size += 1
      break if current_node.next == nil 
      current_node = current_node.next
    end 
    size
  end

  def remove_node(index)

    counter = 0
    current_node = @head
    prev_node = nil

    while counter < index
      prev_node = current_node
      current_node = current_node.next
      counter += 1
    end

    next_node = current_node.next
    current_node.next = nil       
    prev_node.next = next_node

    current_node
  end

  #O(n)
  def read_node_at_index(index)
    #printout the progress of nodes
    i = 0
    current_node = @head

    while i < index
      puts "the node is: #{@current_node.data}"
      current_node = current_node.next
      i += 1 
    end

    current_node.data
  end

  def insert_node_at_index(new_node, index)
    i = 0
    current_node = @head
    while i < index - 1
      current_node = current_node.next
      i += 1
    end
    previous_node = current_node
    current_node = previous_node.next
    
    previous_node.next = new_node
    new_node.next = current_node
    
  end

  def reverse
    #1-> 2 - > 3 -> 4 -> 5
    current = @head
    previous = nil
    next_node = nil

    while current != nil
      next_node = current.next  #next is 2
      current.next = previous #current.next(1) points to previous(nil) now
      previous = current #previous value is now set as 'current'. this is because we will change current
      current = next_node #1 no longer points to 2, but we have next_node to hold the node 2!
    end
   current = previous
   return current
   
 end
end

list = LinkedList.new()
list.add_node(1)
list.add_node(2)
list.add_node(3)

list.add_node(10)
p list.get_size
# puts "#{list.head.data} , #{list.head.next}"
# puts "#{list.tail.data}, #{list.tail.next}"

p list.head
p list.reverse
p list.head
#list.head.next.data


















