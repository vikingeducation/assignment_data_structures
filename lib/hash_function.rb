require_relative 'linked_list'

class HashFunction
  def initialize
    @buckets = Array.new(26){LinkedList.new}
  end

  def our_hash(word)
    (word.downcase.ord - 97) 
  end

  def insert(word, definition = "")
    @buckets[our_hash(word)].add_node(Node.new(word, definition, nil))
  end

  def render_list
    puts "Rendering hash state"
    @buckets.each_with_index do |list, number| 
      puts "#{(number +97).chr} has #{list.length} entries"
    end
  end

  def define(word)
    bucket_index = our_hash(word)
    access_number = 0
    until word_testing == word
      access_list = @buckets[bucket_index].access(1)
  end
end

HashFunction.new.render_list