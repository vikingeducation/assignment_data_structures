require_relative 'linked_list'

class HashTable
  def initialize
    @buckets = []
  end

  def hash(word)
    word.downcase[0].ord - 97
  end

  def insert(word, definition)
    bucket = @buckets[hash(word)]
    if bucket.nil?
      @buckets[hash(word)] = LinkedList.new
    end
    @buckets[hash(word)].add_node(word, definition)
  end

  def render_list
    @buckets.map do |list|
      list.to_s
    end.join "\n"
  end

  def define(word)
    list = @buckets[hash(word)]
    if list && node = list.find_word(word)
      puts node.definition
    else
      puts "Sorry, the word you entered doesn't seem to exist."
    end
  end
end

# hash = HashTable.new
# hash.insert("Cat", "Meowing animal")
# hash.insert("Dog", "Barking animal")
# hash.insert("Dragon", "Fire-breathing mythical animal")
#
# hash.define("Cat")
# hash.define("Cow")
# hash.define("Traut")
