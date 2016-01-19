=begin
  1. Build a linked list node that contains the word and its definition (and anything else you need) using a Struct (not a class). (DONE)

  2. Build a basic linked list class that allows you to:
  Create the list (DONE)

  3. Read nodes at a particular index (DONE)

  4. (add a printout which tracks the crawler's progress or at least returns the number of steps). (DONE)

  5. In the comments, state the Big-O time of this operation. (DONE)

  6. Insert nodes at a particular index or, separately, (DONE)

  7. at the end of the list (so store a reference to the last node). (DONE)

  6. In the comments, state the Big-O time of this operation. (Done)

  7. Build a method #reverse on your LinkedList class that will entirely flip the order of this list, so the "head" and the "tail" are swapped and all the links point in opposite directions. (DONE)

  8. In a comment above the method, explain how quickly it runs in Big O notation. (DONE)

  9. Is it "in place" (you reused the existing nodes), or did you have to create new nodes to replace the old ones?
  It's in place, they still have the same object id, the things in the arrays just keep track of the location I'm pretty sure.
=end

# Build a simple node struct
Node = Struct.new(:word, :definition, :next)


# Creates an unordered linked-list
class LinkedList

  # We'll want to keep track of the head node and
  # the last node to make adding and subtracting easy
  attr_accessor :head, :last


  # Allow initiallizing the list with a first node
  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end


  # To add the first node
  def add_first_node(word, definition)
    @head = Node.new(word, definition, nil)
    @last = @head
  end


  # Add a node to the end of the list
  def add_node_to_end(word, definition)
    # change tactics if we're adding the first node
    if @head.nil?

      add_first_node(word, definition)

    else

      new_node = Node.new(word, definition)

      # point the last node to our new one
      @last.next = new_node

      # set our new node as the official last node
      @last = new_node

    end

    puts "Added node with word: #{word} / definition: #{definition}"
  end

  # The Big O for this would be O(n) because the steps depends on the sample size.
  def add_node(word, definition, index)

    # start at the head
    counter = 0
    current_node = @head
    prev_node = nil

    # crawl to the index position
    while counter < index
      prev_node = current_node # prev_node becomes @head
      current_node = current_node.next #current_node becomes the next node
      counter += 1
    end

    new_node = Node.new(word, definition)
    prev_node.next = new_node
    new_node.next = current_node

    puts "Inserted node at index #{index} with word: #{new_node.word} and definition: #{new_node.definition}"

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
      prev_node = current_node # prev_node becomes @head
      current_node = current_node.next #current_node becomes the next node
      counter += 1
    end

    # now perform the removal (cutting out current_node)
    next_node = current_node.next # next_node becomes the item at index 2
    current_node.next = nil # node as index 2 becomes nil
    prev_node.next = next_node # @head becomes joined up with our saved item 

    puts "Removed node at index #{index} with word: #{current_node.word} and value: #{current_node.definition}"
  end


  # Return the node at that position, like in an array
  # (no error handling)
  def find_node(index)

    # stat at the head
    counter = 0
    current_node = @head

    # crawl to the index position
    # outputs each node value for visibility
    while counter < index
      current_node = current_node.next
      counter += 1
    end

    puts "Found node at index #{index} with word: #{current_node.word} and definition: #{current_node.definition}"
    current_node
  end

  def list_length
    current_node = @head
    counter = 1
    loop do
      break if current_node.next.nil?
      current_node = current_node.next
      counter += 1
    end
    counter
  end

  # Crawls and prints the list
  # The Big O would be O(N) because the number of steps depends on the sample size.
  def print_list
    counter = 0
    current_node = @head
    loop do
      puts "Node at index #{counter}: #{current_node.word} - #{current_node.definition}"
      break if current_node.next.nil?
      current_node = current_node.next
      counter += 1
    end
  end

  # Even though there are two loops here aka 2n, big O will still be O(N)
  def reverse
    current_node = @head
    nodes = []
    loop do
      nodes << current_node
      break if current_node == @last
      current_node = current_node.next
    end

    index = nodes.size-1
    while index > 0
      nodes[index].next = nodes[index-1]
      index -= 1
    end
    nodes[index].next = nil

    @head,@last = @last,@head
  end

  def word_meaning(word)
    current_node = @head
    count = 1
    loop do
      # Finds the word
      # Doesn't find the word
      if current_node.word == word
        puts "#{count} nodes traversed."
        return current_node.definition
      elsif current_node.next.nil?
        puts "#{count} nodes traversed."
        return "This a friendly 'word not found' message."
      else
        current_node = current_node.next
        count += 1
      end
    end
  end
end

l1 = LinkedList.new(Node.new("Compulsive", "me", nil))
l1.add_node_to_end("Bowie", "5 Years")
l1.add_node_to_end("Bowie", "Soul Love")
l1.add_node_to_end("Bowie", "Starman")
l1.add_node_to_end("Bowie", "It Ain't Easy")
l1.add_node_to_end("Bowie", "Lady Stardust")
l1.remove_node(3)
l1.add_node("Against Me", "White Crosses", 3)
l1.reverse
l1.print_list