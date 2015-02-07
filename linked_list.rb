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

  def add_node(word, definition)
    if @head.nil?
      add_first_node(word, definition)
    else
      new_node = Node.new(word, definition)
      @last.next = new_node
      @last = new_node
    end

    puts "Successfully added node '#{word}' defined as '#{definition}'"
  end

  def insert_node (word, definition, index)
    counter = 0
    current_node = @head
    prev_node = nil

    while counter < index
      prev_node = current_node
      current_node = current_node.next
      counter += 1
    end

    new_node = Node.new(word, definition, current_node)
    prev_node.next = new_node
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

    prev_node.next = current_node.next
    puts "Removed node '#{current_node.word}' at index #{index}, defined as '#{current_node.definition}'"
  end

  def find_node(index)

    counter = 0
    current_node = @head

    while counter < index
      current_node = current_node.next
      counter += 1
    end

    puts "Found node '#{current_node.word}' at index #{counter}, defined as '#{current_node.definition}'"
    current_node
  end

  def find_word(word)
    current_node = @head
    steps = 1
    until current_node.word == word  || current_node.next.nil?
      current_node = current_node.next
      steps += 1
    end

    if current_node.word == word
      puts "#{current_node.word}, #{current_node.definition}, steps: #{steps}"
    else
      puts "Error, that word does not exist!"
    end
  end

  def display_linked_list
    current_node = @head
    loop do
      puts "#{current_node.word}, #{current_node.definition}"
      break if current_node.next.nil?
      current_node = current_node.next
    end
  end

  def print_list
    counter = 0
    current_node = @head
    loop do
      puts "Node '#{current_node.word}' at index #{counter}, defined as '#{current_node.definition}'"
      break if current_node.next.nil?
      current_node = current_node.next
      counter += 1
    end
  end
end