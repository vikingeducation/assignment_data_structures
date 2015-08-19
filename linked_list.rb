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
      @last.next = new_node
      @last = new_node

    end

    @length += 1
    puts "Added node for #{word}"
    # O(1)

  end

  def find_node(index)

    current_node = @head
    puts "Node 0 is #{current_node.word}"

    index.times do |i|
      current_node = current_node.next
      puts "Node #{i + 1} is #{current_node.word}"
    end

    current_node
    # O(n)

  end

  def define_node(search)

    current_node = @head
    counter = 0

    @length.times do
      counter += 1
      if current_node.word == search
        puts "The definition of #{search} is #{current_node.definition}"
        return
      else
        current_node = current_node.next
      end

    end

    puts "#{search} was not found"
  end

  def insert_node(index, word, definition)

    if index > @length - 1
      raise 'The list only contains #{@length} nodes'

    elsif index = @length - 1
      add_node(word, definition)

    else
      previous_node = find_node(index)

      node_to_insert = Node.new(word, definition, nil)

      next_node = previous_node.next
      previous_node.next = node_to_insert
      node_to_insert.next = next_node

      @length += 1
    end
    # O(n)
  end

  def reverse

    current_node = @last

    for i in (2..@length) do
      current_node.next = find_node(@length - i)
      current_node = current_node.next
    end

    current_node.next = nil

    current_node = @last
    @last = @head
    @head = current_node

    # O(n^2)
  end

  def print_list

    counter = 0
    current_node = @head
    puts "\nCurrent List"
    loop do
      puts "Node at index #{counter}: #{current_node.word}"
      break if current_node.next.nil?
      current_node = current_node.next
      counter += 1
    end

  end

end