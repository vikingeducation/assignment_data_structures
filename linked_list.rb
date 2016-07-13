Node = Struct.new(:word, :definition, :next)

class LinkedList

  def initialize(first_node = nil)
    @head = first_node
    @tail = first_node
  end

  def add_node_end(word, definition = nil)
    if @head == nil
      add_first_node(word, definition)
      puts "You added the word #{word} to the first node of the list because there was no head"
    else
      new_node = Node.new(word, definition, nil)
      @tail.next = new_node
      @tail = new_node
      puts "You added the word #{word} to the last node of the list"
    end
  end

  # O(n)
  def add_node(word, definition, index)
    counter = 0
    current_node = @head
    while counter < index
      return puts "Sorry, that index doesn't exist" if current_node.next
      current_node = current_node.next
      counter += 1
    end
    new_node = Node.new(word, definition, nil)
    new_node.next = current_node.next
    current_node.next = new_node
    puts "Your new node has been added to the #{counter}th/st place in the list"
  end

  def add_first_node(word, definition)
    new_node = Node.new(word, definition, nil)
    @head = new_node
    @tail = new_node
  end

  # O(n)
  def read_node(index)
    counter = 0
    current_node = @head
    while counter <= index
      puts "The current node is #{current_node.word}"
      current_node = current_node.next if counter != index
      counter += 1
    end
    puts "The node you are looking for is the word #{current_node.word} which has the definition: #{current_node.definition}"
  end

  def read_list
    current_node = @head
    while current_node != nil
      puts "The current node is #{current_node.word} and its definition is #{current_node.definition}"
      current_node = current_node.next
    end
  end

  # O(n)
  def reverse_list
    current_node = @head
    previous_node = nil
    while current_node != nil
      next_node = current_node.next
      if current_node == @head
        current_node.next = nil
        # @tail = current_node
      else
        current_node.next = previous_node
      end
      previous_node = current_node
      current_node = next_node
    end
    head_variable = @head
    tail_variable = @tail
    @tail = head_variable
    @head = tail_variable
  end

end

# list = LinkedList.new
# list.add_node_end("Apple", "A fruit")
# list.add_node_end("Banana", "Another fruit")
# list.add_node_end("Cactus", "Not a fruit")
# list.add_node_end("Durian", "Actually a fruit")
# list.read_list
# list.reverse_list
# list.read_list
