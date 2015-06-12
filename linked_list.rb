Node = Struct.new(:word, :definition, :next)

class LinkedList
  attr_accessor :head, :last

  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end


  def add_first_node(word, definition)
    @head = Node.new(word, definition, nil)
    @last = @head
  end


  def add_node(word, definition)

    if @head.nil?
      add_first_node(word, definition)

    else
      new_node = Node.new(word, definition, nil)

      @last.next = new_node
      @last = new_node
    end

    puts "Added new node for #{word}."

  end


  # Reads node at a given index.  Worst case is O(n),
  # because it could potentially have to pass through
  # every node just to get to the last one.
  def read_node(index)

    counter = 0
    current_node = @head

    until counter == index do
      current_node = current_node.next
      counter += 1
      puts "X" * counter
    end

    if current_node.nil?
      puts "No node here!"
    else
      word = current_node.word
      definition = current_node.definition

      puts "#{word}: #{definition}"
    end

  end

  # Inserts a new node at the given index. O(n) because
  # it has to run through each node, potentially all the
  # way to the last one in the list.
  def insert_node(index, word, definition)

    counter = 0
    current_node = @head
    previous_node = nil

    until counter == index do
      previous_node = current_node
      current_node = current_node.next
      counter += 1
    end

    # insert and point to node that was just bumped back
    new_node = Node.new(word, definition, current_node)
    # redirect previous node pointer to the inserted node
    previous_node.next = new_node

  end

  # Reverses the order of the linked list.  Method is
  # O(4n) because it only cycles through the nodes once
  # but has 4 steps in each.  This simplifies to O(n).
  # This is still a time-saver, because I was able to keep
  # nodes in-place.  Creating new nodes would have required
  # nested looping, resulting in O(n!).
  def reverse

    @last = @head

    # start at first node
    prior_node = nil
    current_node = @head
    next_node = current_node.next
    current_node.next = nil # flip pointer

    loop do
      prior_node = current_node
      current_node = next_node
      next_node = current_node.next
      current_node.next = prior_node # flip pointer
      break if next_node.nil?
    end

    @head = current_node

  end


  def count_nodes
    if @head.nil?
      0

    else
      current_node = @head
      size = 1

      loop do
        break if current_node.next == nil
        current_node = current_node.next
        size += 1
      end

      size
    end

  end


  def find_node(index)

    counter = 0
    current_node = @head

    until counter == index do
      current_node = current_node.next
      counter += 1
    end

    if current_node.nil?
      puts "No node here!"
    else
      current_node
    end

  end


end