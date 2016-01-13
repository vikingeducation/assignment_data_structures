class LinkedList
  attr_accessor :head, :tail, :size

  def initialize(first_node = nil, last_node = nil)
    @head = first_node
    @tail = last_node
    @size = 0
  end

  def add_first_node(word, definition)
    @head = Node.new(word, definition)
    @tail = @head
  end

  def add_node(word, definition)
    if @head.nil?
      add_first_node(word, definition)
    else
      new_node = Node.new(word, definition)
      @tail.next = new_node
      @tail = new_node
    end
    @size += 1
  end

  def split_in_half
    start_list = LinkedList.new
    current_index = 0
    node = @head
    until current_index == size / 2
      start_list.add_node(node.word, node.definition)
      node = node.next
      current_index += 1
    end
    end_list = LinkedList.new(node.dup, @tail.dup)
    [start_list, end_list]
  end

  # This is O(n), in the worst case that index is the last index of the LinkedList.
  def find_node_at(index)
    current_index = 0
    node = @head
    until current_index == index
      puts current_index
      node = node.next
      current_index += 1
    end
    puts "returning node at #{current_index}"
    node
  end

  def insert_node_at(word, definition, index)
    before_node = find_node_at(index-1)
    after_node = before_node.next
    new_node = Node.new(word, definition, after_node)
    before_node.next = new_node
  end

  # This is O(n), since you have to traverse the length of the linked lisk to rearrange the "links" to point in the opposite direction. This method uses existing nodes and simply rearranges the links.
  def reverse
    current_node = @head
    @tail, @head = @head, @tail
    last_node = nil
    until current_node == nil
      next_node = current_node.next
      current_node.next = last_node

      last_node = current_node
      current_node = next_node
    end

  end

  def to_s
    nodes = []
    current_node = @head
    until current_node == nil
      nodes << current_node.word
      current_node = current_node.next
    end
    nodes.join " "
  end

  def find_word(word)
    current_node = @head
    counter = 1
    until current_node == nil
      if current_node.word == word
        puts "Searched for #{word} through #{counter} nodes"
        return current_node
      end
      current_node = current_node.next
      counter += 1
    end
    puts "Searched for #{word} through #{counter} nodes and failed"
    false
  end
end

Node = Struct.new(:word, :definition, :next) do def inspect
    "#{word} -> #{self.next.inspect || "nil"}"
  end
end

listy = LinkedList.new
listy.add_node("Baby", "Tiny Baby")
listy.add_node("Grampa", "Old Baby")
listy.add_node("Dragon", "Scaly Baby")
listy.add_node("Dirty", "Tiny Baby")
listy.add_node("Filth", "Old Baby")
listy.add_node("Xena", "Scaly Baby")

first_half, second_half = listy.split_in_half

puts first_half
puts second_half
# >> Baby Grampa Dragon
# >> Dirty Filth Xena
