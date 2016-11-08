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
    node = Node.new("cat", "cat definition", first)
    first = node
  end

  def insert(node, index)
  end


  protected
  attr_writer :first, :last
end
