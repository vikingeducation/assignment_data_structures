Node = Struct.new(:word, :definition, :next)

class LinkedList
  attr_accessor :head, :last

  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end

  def add_first_node(word, definition = nil)
    @head = Node.new(word, definition, nil)
    @last = @head
  end

  # O(1)
  def add_node_to_end(word, definition = nil)
    if @head.nil?
      add_first_node(word, definition)
    else
      new_node = Node.new(word, definition)
      @last.next = new_node
      @last = new_node
    end
    # puts "Added word '#{word}' with definition '#{definition}'"
  end

  # O(n) since must crawl through each item
  def add_node_at_index(word, definition = nil, index)
    counter = 0
    current_node = @head
    prev_node = nil

    # crawl to index to set both prev_node and current_node
    while counter < index
      prev_node = current_node
      current_node = current_node.next
      counter += 1
    end

    # add the new node
    new_node = Node.new(word, definition)
    prev_node.next = new_node
    new_node.next = current_node

    # puts "Added '#{word}: #{definition}' at index #{index}."
  end

  # No error handling
  # O(n) since must crawl through each item
  def find_node(index)
    counter = 0
    current_node = @head

    while counter < index
      current_node = current_node.next
      counter += 1
    end

    # puts "Node at index #{index} is '#{current_node.word}: #{current_node.definition}', and took #{counter+1} steps."
    current_node
  end

  def get_definition(lookup_word)
    counter = 0
    size = self.length
    current_node = @head

    while counter < size
      if current_node.word == lookup_word
        puts "#{lookup_word}: #{current_node.definition}, #{counter} steps"
        return current_node.definition
      else
        current_node = current_node.next
        counter += 1
      end
    end

    puts "I'm sorry, didn't find '#{lookup_word}' in the current dictionary. #{counter} steps."
  end

  # O(n^2) because loop in a loop.  It is "in place" - just resets the next pointer to the reverse object.
  def reverse_in_place
    new_head = @last
    reverse_counter = length
    current_reverse_node = @last

    # Change all the nodes' next attribute
    while reverse_counter > 0
      # set the outer loop node's next to the previous node
      prev_node = find_node(reverse_counter - 1)
      current_reverse_node.next = prev_node
      current_reverse_node = prev_node
      reverse_counter -= 1
    end

    # Reset head and last
    @last = current_reverse_node
    @last.next = nil
    @head = new_head
  end

  def length
    counter = 1
    current_node = @head
    while current_node != @last
      current_node = current_node.next
      counter += 1
    end
    # puts "Length is #{counter}."
    counter
  end
end

# x = LinkedList.new
# x.add_node_to_end('hi', 'short for hello')
# x.add_node_to_end('bye', 'short for goodbye')
# x.add_node_to_end('hola', 'Spanish for hello')
# x.find_node(1)
# x.find_node(2)
# x.add_node_at_index('geia sou', "Greek for hello", 1)
# x.length
# x.reverse_in_place