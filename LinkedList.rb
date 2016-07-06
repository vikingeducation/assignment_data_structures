require 'pry'
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

  #add_node runs in O(1) since, we know the tail pointer to insert a node
  def add_node(word, definition)
    if @head.nil?
      add_first_node(word, definition)
    else
      new_node = Node.new(word, definition)
      @last.next = new_node
      @last = new_node
    end
    puts "Added node with word: #{word} and defintion #{definition}"
  end

  #insert_node at particular index runs in O(n), as it might possibly have to iterate "n-1" nodes
  def insert_node(word, definition, index)
    node = Node.new(word, definition, nil)
    if index == 0
      node.next = @head
      @head = node
    else
      counter = 0
      current_node = @head
      prev_node = nil
      while counter < index
        prev_node = current_node
        current_node = current_node.next
        counter += 1
      end
      node.next = current_node
      prev_node.next = node
      puts "Inserting node at index #{index} with value: #{node.word}"
    end
  end

  def remove_node(index)
    counter = 0
    current_node = @head
    prev_node = nil
    while counter < index
      prev_node = current_node
      current_node = current_node.next
      counter += 1
    end
    next_node = current_node.next
    current_node.next = nil       # clear the pointer
    prev_node.next = next_node
    puts "Removed node at index #{index} with value: #{current_node.word}"
  end

  #find_node runs in O(n) as it iterates all nodes from the start
  def find_node(index)
    counter = 0
    current_node = @head

    while counter < index
      current_node = current_node.next
      puts "Iterating through index #{counter} to find #{index}"
      counter += 1
    end
    puts "Found node at index #{index} with value: #{current_node.word}"
    current_node
  end

  def print_list
    counter = 0
    current_node = @head
    loop do
      puts "Node at index #{counter}: #{current_node.word}"
      break if current_node.next.nil?
      current_node = current_node.next
      counter += 1
    end
  end

  # reverse runs in O(n), as we iterate each node once and manupulate the pointers
  # this is implemented in place by reusing the nodes.
  def reverse
    current_node = @head
    prev_node = nil
    loop do
      next_node = current_node.next
      break if current_node.next.nil?
      current_node.next = prev_node
      prev_node = current_node
      current_node = next_node
    end
    @last = @head
    @head = prev_node
  end

end

l = LinkedList.new
#add_node runs in O(1) since, we know the tail pointer to insert a node
l.add_node("word1", "def1")
l.add_node("word2", "def2")
l.add_node("word3", "def3")
l.add_node("word4", "def4")
l.add_node("word5", "def5")
p l
#find_node runs in O(n) as it iterates all nodes from the start
p l.find_node(3)
#insert_node at particular index runs in O(n), as it might possibly have to iterate "n-1" nodes
l.insert_node("word0", "def0", 0)
p l
l.insert_node("word50", "def50", 3)
p l
puts "------------"
l.reverse
p l
