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
#                           reverse the List
#                           (discuss bigO in comments)
#                           (printout along crawl)

# looping over hash
# creating node
# first item = first node
# point first node to next node, and so on
# build the list by prepended

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

# "cat" --> "dog" --> "egg"
#   0          1         2

# "cat" --> "dog" --> "giraffe" --> egg"
#   0          1         2            3

# insert("giraffe", 2)

  # updating the last? inserting at the end?
  def insert(node, target_index = nil)
    @items += 1
    index = 0
    target_node = @head
    puts "index: #{index}"
    puts "Node key: #{target_node.word}"
    while index < target_index
      previous_node = target_node
      target_node = target_node.next
      puts "index: #{index}"
      puts "Node key: #{target_node.word}"
      index += 1
    end
    puts "inserting after #{previous_node.word}"
    previous_node.next = node
    puts "inserting before #{target_node.word}"
    node.next = target_node
  end

 # tail
 #set tail.next to new_node
 # set tail = new_node


end
