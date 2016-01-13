require './linked_list'

class HashTable

  attr_reader: splits

  def initialize
    @buckets = []
    @splits = []
  end

  def hash(word)
    hash = 0
    hash += (word.downcase[0].ord - 97)
    hash += ((word.downcase[1].ord - 96) * 26) if word[1]
    # hash += ((word.downcase[2].ord - 96) * 26 * 26) if word[2]
    hash
  end

  def balance
    bucket_average
  end

  def bucket_average
    total_size = @buckets.inject(0) do |sum, list|
      sum += list ? list.size : 0
    end
    total_size / @buckets.length
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
      list.size if list
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

hash = HashTable.new
# hash.insert("Cat", "Meowing animal")
# hash.insert("Dog", "Barking animal")
# hash.insert("Dragon", "Fire-breathing mythical animal")
#
# hash.define("Cat")
# hash.define("Cow")
# hash.define("Traut")
#
hash.hash('a') # => 0
hash.hash('b') # => 1
hash.hash('z') # => 25
hash.hash('aa') # => 26
hash.hash('ba') # => 27
hash.hash('za') # => 51
hash.hash('ab') # => 52
hash.hash('zz') # => 701
hash.hash('aaa') # => 702
