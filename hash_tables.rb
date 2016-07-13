require_relative 'lib/linked_list'

class HashTable 

  def initialize
    @buckets = [] # buckets is an array of linked lists
  end

  def hash(word)
    word[0].ord - 97
  end

  def insert(word) 
    linked_list = @buckets[hash(word[0])]
    word = 
    definition = 
    if linked_list.nil?
      linked_list = LinkedList.new(Node.new(word[0], word[1], nil))
    else
      linked_list.add_node_to_end(word[0], word[1]) 
    end
  end

end