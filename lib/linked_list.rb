Node = Struct.new(:word, :definition, :next)


class LinkedList

  attr_reader :head, :last

  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end

  

  def add_node_to_end(word, definition)
    if @head.nil?
      add_first_node(word,definition) 
    else
      new_word = Node.new(word, definition)
      @last.next = new_word
      @last = new_word
    end
    puts "Added node for #{word} with definition #{definition}."
  end

  def remove_node(index) # 3
    # traverse the nodes untl the node @ index is reached
    # connect the previous node to the next node (next and previous relative to node @ index)

    if index == 0
      puts "Removing note at index #{index}, which is #{@head.word}: #{@head.definition}"
      @head = @head.next
    else
      counter = 0
      current_node = @head 
      prev_node = nil
      while counter < index
        prev_node = current_node
        next_node = current_node.next
        current_node = next_node 
        counter += 1
      end
      next_node = current_node.next
      current_node.next = nil
      prev_node.next = next_node
      puts "Removed node at index #{index}, which was:"
      puts "#{current_node.word}: #{current_node.definition}"
    end
  end

  def read(index)
    current_node = scan(index)
    [current_node.word, current_node.definition]
  end

  def scan(index)
    counter = 0
    current_node = @head
    prev_node = nil
    while counter < index
      prev_node = current_node
      next_node = current_node.next
      current_node = next_node 
      counter += 1
    end
    current_node
  end

  def add_node_at_index(index, word, definition)
    counter = 0
    current_node = @head
    prev_node = nil
    while counter < index
      prev_node = current_node
      next_node = current_node.next
      current_node = next_node 
      counter += 1
    end
    new_node = Node.new(word, definition)
    if prev_node
      prev_node.next = new_node
    else
      @head = new_node
    end
    new_node.next = current_node
  end





  #private

  def add_first_node(word, definition)
    @last = @head = Node.new(word, definition, nil)
  end


end
