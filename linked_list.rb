Node = Struct.new(:word, :definition, :next)

class LinkedList

    attr_reader :length

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

  def define_node(searched_word)

    current_node = @head
    counter = 0

    @length.times do
      counter += 1
      if current_node.word == searched_word
        puts "The definition of #{searched_word} is #{current_node.definition}"
        puts "It took #{counter} iterations to find it"
        return
      else
        current_node = current_node.next
      end

    end

    puts "#{searched_word} Not found (word not in list)"
    puts "It took #{counter} iterations to do this"

  end

  def insert_node(index, word, definition) 

    if index > @length - 1 
      raise "The list has only #{@length} nodes"

    elsif index == @length - 1
      add_node(word, definition)

    else #actually insert node

    previous_node = find_node(index)

    node_to_insert = Node.new(word, definition, nil)

    #reassing point to nodes
    next_node = previous_node.next
    previous_node.next = node_to_insert
    node_to_insert.next = next_node

    #time for operation = O(n)
    @length += 1

    end

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

  def print_list
    counter = 0
    current_node = @head
    puts "\n CURRENT LIST"
    loop do
      puts "Node at index #{counter}: #{current_node.word}"
      break if current_node.next.nil?
      current_node = current_node.next
      counter += 1
    end
  end

end



