Node = Struct.new(:word, :definition, :next)

class LinkedList

  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
    @length = 0
  end

  def create_head_node(word, definition)

    @head = Node.new(word, definition, nil)
    @last = @head

  end

  def add_node(word, definition)

    if @head.nil?

      create_head_node(word, definition)

    else

      new_node = Node.new(word, definition, nil)

      # point the last node to our new one
      @last.next = new_node

      # set our new node as the official last node
      @last = new_node

    end

    @length += 1

    puts "Added node for: #{word}"
    #time for operation = O(1)

  end

  def find_node(index)

    current_node = @head
    puts "Node 0 is #{current_node.word}"

    index.times do |i|
      current_node = current_node.next
      puts "Node #{i+1} is #{current_node.word}"
    end

    current_node
    #time for operation = O(n)

  end

  def insert_node(index, word, definition) 

    previous_node = find_node(index)

    node_to_insert = Node.new(word, definition, nil)

    #reassing point to nodes
    next_node = previous_node.next
    previous_node.next = node_to_insert
    node_to_insert.next = next_node

    #time for operation = O(n)
    @length += 1

  end

  def reverse

    #a -> b -> c -> d -> e
    cur_node = @last

    for i in (2..@length) do
      cur_node.next = find_node(@length-i)
      
      cur_node = cur_node.next
    end

    cur_node.next = nil

    cur_node = @last
    @last =@head
    @head = cur_node

    # time complexity of the operation id O(n^2)
  end


end

