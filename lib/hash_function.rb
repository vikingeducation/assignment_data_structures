require_relative 'linked_list'

class HashFunction
  def initialize
    @buckets = Array.new(26){LinkedList.new}
  end

  def our_hash(word)
    (word.downcase.ord - 97)
  end

  def insert(word, definition = word)
    @buckets[our_hash(word)].add_node(Node.new(word, definition, nil))
  end

  def render_list
    puts "Rendering hash state"
    @buckets.each_with_index do |list, number|
      puts "#{(number +97).chr} has #{list.length} entries"
    end
  end

  def define(word)
    return_values = @buckets[our_hash(word)].get_definition(word)
    if return_values[0] == false
      puts return_values[1]
      raise "word not found"
    else
      puts "Your definition is: #{return_values[0]}"
      puts "#{return_values[1]} steps to find defintion"
      return_values[0]
    end
  end

  def load_dict
    File.readlines("dictionary.txt").each do |word|
      insert(word, word)
    end
  end
end

a = HashFunction.new

a.load_dict
a.render_list
