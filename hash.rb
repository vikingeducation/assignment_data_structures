require_relative 'linked_list'

class HashTable
 
  def initialize
    @buckets = []
  end
  
  def hash(word)
    word[0].downcase.ord - 97
  end

  def insert(word)
    if @buckets[hash(word)] == nil
      new_list = LinkedList.new
      new_list.add_node(word, "")
      @buckets[hash(word)] = new_list
    else
      @buckets[hash(word)].add_node(word, "")
    end
  end

  def render_list
    @buckets.each_with_index do |item, index|
      print "item #{index} with size #{item.get_size}"
    end
  end

  def define(word)
    current_node = @buckets[hash(word)].head
    count = 0
    while current_node != nil
      if current_node.word == word
        current_node.definition
      else
        puts "word not found"
      end
      current_node = current_node.next
      count += 1
    end
    puts "traversed #{count} nodes to search for word"
  end
end
