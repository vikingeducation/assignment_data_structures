require 'pry'

# Node Struct ->  word
#                 definition
#                 pointer to next node
#
# Linked List Class ->
#                 vars: last Node
#                       first Node
#
#                 methods: create list (feed in words and definitions)
#                           read Node at an indexing
#                           insert Node at an index
#                           reverse the List #                           (discuss bigO in comments)
#                           (printout along crawl)

# looping over hash
# creating node
# first item = first node
# point first node to next node, and so on
# build the list by prepended

    # if target_node == nil, previous node is tail
      # break out of loop
      # set previous_node.next to new node
      # set tail == new_node

dict_test = {"cat" => "cat definition", "dog" => "dog definition", "red" => "red definition"}

Node = Struct.new(:word, :definition, :next)

class LinkedList
  # has address of the first node, then methods to act on the list that connects
  # to the first node
  attr_reader :head, :tail, :items

  def initialize()
    @head = nil
    @tail = nil
    @items = 0
  end

  def create_list(dictionary)
    # iterate over dictionary and set node for each
    dictionary.each do |word, definition|
      node = Node.new(word, definition, @head)
      @tail ||= node
      @head = node
    end
  end

#   def reverse
#   # [] --> [] --> [] --> [] --> []
#   # @head                      @tail

#   # 1) @tail = @head
#   # 2) current_node = @head
#   # 3) target_node = current_node.next
#   # 4) @tail.next = nil

#   # until current_node.next == nil

#     # 5) previous_node = current_node  
#     # 6) current_node = target_node
#     # 7) target_node = current_node.next
#     # 8) current_node.next = previous_node

#   # end

#   # current_node.next = previous_node
#   # @head = current_node
# end

# "cat" --> "dog" --> "egg"
#   0          1         2

# "cat" --> "dog" --> "giraffe" --> egg"
#   0          1         2            3

# insert("giraffe", 2)

  # updating the last? inserting at the end?
  def insert(value, target_index = nil)
    node = Node.new(value, "def", nil)
    if @items == 0
      set_initial_node(node)
    elsif target_index == 0
      set_head_node(node)
    elsif target_index == nil
      set_tail_node(node)
    else
      find_node_and_parent(target_index)

      @tail = node if at_tail?

      @previous_node.next = node
      node.next = @target_node
    end

    @items += 1
  end

  def read_at(target_index)
    if target_index >= @items
      puts "Sorry that index is out of range."
      return false
    elsif target_index == nil
      @target_node = @tail
    else
      find_node_and_parent(target_index)
    end

    puts "Your word is #{@target_node.word}."
    puts "The definition is #{@target_node.definition}"
  end

  def find_node_and_parent(target_index)
    index = 0
    @target_node = @head

    while index < target_index
      print_status(index)
      crawl_once
      index += 1
      break if at_tail?
    end
    print_status(index)
  end

  def set_initial_node(node)
    @head = node
    @tail = node
  end

  def set_head_node(node)
    node.next = @head
    @head = node
  end

  # def reverse
  #   current_node = @head
  #   next_node = current_node.next
  #   @tail = @head
  #   @tail.next = nil
  #   until current_node.next == nil
  #     previous_node = current_node  
  #     current_node = next_node
  #     next_node = current_node.next
  #     current_node.next = previous_node
  #   end
  #   current_node.next = previous_node
  #   @head = current_node    
  # end


# [] --> [] <-- [] <-- [] <-- []
             # p_node   c_node  n_node


# [] --> [] --> [] --> [] --> []
 # @head                      @tail

 # 1) current_node = @head
 # 2) target_node = current_node.next
 # 3) @tail = @head
 # 4) @tail.next = nil

 # until current_node.next == nil

   # 5) previous_node = current_node  
   # 6) current_node = next_node
   # 7) next_node = current_node.next
   # 8) current_node.next = previous_node

 # end

 # current_node.next = previous_node
 # @head = current_node



  def set_tail_node(node)
    @tail.next = node
    @tail = node
  end

  def crawl_once
    @previous_node = @target_node
    @target_node = @target_node.next
  end

  def at_tail?
    @target_node.nil?
  end

  def print_status(index)
    puts "index: #{index}"
    puts "Node key: #{@target_node.word}"
  end

  def print
    find_node_and_parent(@items - 1)
  end

end
