require_relative 'linked_list'

class HashTable

  attr_accessor :buckets

  def initialize
    @buckets = Array.new(26){LinkedList.new}
  end

  def hash(string)
    string[0].downcase.ord - 97
  end

  def insert(word)
    new_node = Node.new(word, nil, nil)
    @buckets[hash(word)].add_node_end(new_node)
  end

  def render_list
    
  end



end


