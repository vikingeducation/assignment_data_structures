require_relative 'linked_list'

class HashTable

  attr_accessor :buckets

  def initialize
    @buckets = []
  end

  def hash(string)
    string[0].downcase.ord - 97
  end

  def insert(word, definition = "This word has not been defined")
    new_node = Node.new(word.downcase, definition, nil)
    index = hash(word)
    @buckets[index] ||= LinkedList.new
    @buckets[index].add_node_end(new_node)
  end

  def render_list
    counter = 0
    while counter < @buckets.length
      if @buckets[counter].head == nil
        puts "There are no words at index #{counter}"
      else
        puts "Index #{counter} contains these words and definitions:"
        @buckets[counter]
        @buckets[counter].read_list
      end
      counter += 1
    end
  end

  def define(word)
    definition = @buckets[hash(word)].find(word)
    if definition == nil
      puts "Your word does not exist"
    else
      puts definition
    end
  end

end

# h = HashTable.new
# h.insert("Apple")
# h.insert("Apricot", "A fruit")
# h.insert("Bear")
# h.insert("Cat")
# h.define("Apricot")
