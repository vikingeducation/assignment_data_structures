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
  attr_reader :first, :last

  def initialize()
    @first = nil
    @last = nil
  end

  def create_list(dictionary)
    # iterate over dictionary and set node for each
    dictionary.each do |word, definition|
      node = Node.new(word, definition, first)
      last ||= node
      first = node

    end
  end

# "cat" --> "dog" --> "egg"
#   0          1         2

# "cat" --> "dog" --> "giraffe" --> egg"
#   0          1         2            3

# insert("giraffe", 2)

  def insert(node, target_index)
    index = 0
    target_node = first
    while index < target_index
      previous_node = target_node
      target_node = target_node.next
      index += 1
    end
    previous_node.next = node
    node.next = target_node
  end


  protected
  attr_writer :first, :last
end
