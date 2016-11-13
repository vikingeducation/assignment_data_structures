require_relative 'linked_list'

class HashTable

  def initialize 
    @buckets = []
  end

  def hash(word)
    first_letter = word[0].downcase  
    first_letter.ord - 97    
  end

  def insert(word, definition)    
    if @buckets[hash(word)] # exists
      @buckets[hash(word)].append_node(word, definition)
    else
      @buckets[hash(word)] = LinkedList.new
      @buckets[hash(word)].add_first_node(word, definition)
    end
  end

  def render_list
    @buckets.each_with_index do |bucket, index|
      next if bucket.nil? # bucket doesn't have linked list
      puts "Bucket #{index} content:"
      bucket.print_nodes
    end
    nil
  end

  def define(word)
    location = hash(word)
    node = @buckets[location].find_node_by_word(word)
    if node.nil? 
      "Definition for #{word} not found. Sorry!"
    else
      node.definition
    end
  end

end

