require_relative 'linked_list'

class HashTable
  attr_reader :buckets

  def initialize
    @buckets = Array.new(26)
  end

  def hash(word)
    word.chr.downcase.ord - 97
  end

  def insert(word, definition)
    if @buckets[hash(word)].nil?
      list = LinkedList.new
      list.add_node(word, definition)
      @buckets[hash(word)] = list
    else
      @buckets[hash(word)].add_node(word, definition)
    end
  end
end
