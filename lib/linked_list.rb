
# Build a linked list node that contains the word and its definition (and anything else you need) using a Struct (not a class).
# Build a basic linked list class that allows you to:
# Create the list
# Read nodes at a particular index (add a printout which tracks the crawler's progress or at least returns the number of steps). In the comments, state the Big-O time of this operation.
# Insert nodes at a particular index or, separately, at the end of the list (so store a reference to the last node). In the comments, state the Big-O time of this operation.
# Build a method #reverse on your LinkedList class that will entirely flip the order of this list, so the "head" and the "tail" are swapped and all the links point in opposite directions.
Node = Struct.new(:word, :defn, :next)

class LinkedList

attr_accessor :head, :last, :size

 # Allow initializing the list with a first node
  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end

  # To add the first node
  def add_first_node(word, defn)
    @head = Node.new(word, defn, nil)
    @last = @head
  end


   # Add a node to the end of the list - Big-O is O(1)
  def add_node(word, defn)
    # change tactics if we're adding the first node
    if @head.nil?
      add_first_node(word, defn)
    else
      new_node = Node.new(word, defn)
      # point the last node to our new one
      @last.next = new_node

      # set our new node as the official last node
      @last = new_node
    end
      # puts "Added node with value: #{word}"
  end

   # Return the node at that position, like in an array - Big-O is O(n)
  def find_node(index)
    # start at the head
    counter = 0
    current_node = @head

    # crawl to the index position
    # outputs each node value for visibility
    while counter < index && (index > 0)
      current_node = current_node.next
      counter += 1
    end
    current_node
  end

   # Prints the list - Big-O is O(n)
  def print_list
    # return nil if list.nil?
    counter = 0
    current_node = @head

    loop do
      puts "Node at index #{counter}: #{current_node.word}"
      break if current_node.next.nil?
      current_node = current_node.next
      counter += 1
    end
    @size = counter
    puts "Size is #{counter}"
  end


# Flip the order of this list, so the "head" and the "tail" are swapped and all the links point in opposite directions.
# - Big-O is O(n)
  def reverse
    prev = nil

    # Store the last node as the head node
    @last = @head
    curr = @head

    while(curr != nil)
      # Swap the current node with the previous node until you reach the end of the list and there is no pointer to the next node
      next_node = curr.next   
      curr.next = prev
      prev = curr
      curr = next_node
    end
     # Store the original first node as the tail/last node
    @head = prev
  end
end
