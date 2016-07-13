Node = Struct.new(:word, :definition, :next)

class LinkedList
  attr_reader :head

  def initialize(first_node = nil)
    @head = first_node
    @tail = first_node
    @length = 0
  end

  def add_node_end(node)
    if @head == nil
      add_first_node(node.word, node.definition)
      puts "You added the word #{node.word} to the first node of the list because there was no head"
    else
      @tail.next = node
      @tail = node
      puts "You added the word #{node.word} to the last node of the list"
    end
    @length += 1
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
    @length += 1
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
    next_node = @head.next
    @tail = @head
    while current_node != nil
      next_node = current_node.next
      current_node.next = previous_node
      previous_node = current_node
      current_node = next_node
    end
    @head = previous_node
  end

  def find(word)
    counter = 1
    current_node = @head
    while current_node != nil
      break if current_node.word == word.downcase
      current_node = current_node.next
      counter += 1
    end
    puts "This operation took #{counter} steps"
    current_node.definition if current_node != nil
  end

end

# list = LinkedList.new
# list.add_node_end(Node.new("Apple", "A fruit", nil))
# list.add_node_end(Node.new("Banana", "Another fruit", nil))
# list.add_node_end(Node.new("Cactus", "Not a fruit", nil))
# list.add_node_end(Node.new("Durian", "Actually a fruit", nil))
# list.read_list
# list.reverse_list
# list.read_list
