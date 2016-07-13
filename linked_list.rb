Node = Struct.new(:word, :definition, :next)


class LinkedList

  attr_reader :head, :last

  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end

  def add_first_node(word, definition)
    @last = @head = Node.new(word, definition, nil)
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
    counter = 0
    current_node = @head 
    prev_node = nil

    while counter < index 
      prev_node = current_node
      next_node = current_node.next
      current_node = next_node 
      counter += 1
    end
    prev_node.next = current_node.next
    current_node.next = nil 
    puts "Removed node at index #{index}, which was:"
    puts "#{current_node.word}: #{current_node.definition}"
  end

  def 






end