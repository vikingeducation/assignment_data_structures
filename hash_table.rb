require './linked_list'

class HashTable
  def initialize
    @buckets = []
  end

  def hash(word)
    word[0].ord - 97
  end

  def insert(word)
    hash = hash(word)
    if @buckets[hash].nil?
      sub_list = LinkedList.new
      sub_list.add_first_node(word)
    else
      add_node(word)
    end
  end

  def render_list()
    self.print_list
  end

  def define(word)
    if @buckets[hash(word)].include?(word)
      "Ya got one"
    else
      "Frindly no word message"
    end
  end
end

h = HashTable.new
p h.hash("apple")
h.insert("Aardvark")
#h.render_list