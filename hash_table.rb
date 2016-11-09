require_relative 'linked_list'

class HashTable

  def initialize
    @buckets = Array.new(25) { LinkedList.new }
  end

  def hash(word)
    word[0].downcase.ord - 97
  end

  def insert(word)
    hashed = hash(word)
    @buckets[hashed].add(Node.new(word, nil))
  end

  def define(word)
  end

  def render_list
    @buckets.each do |bucket|
      bucket.node_list
    end
  end
end

h = HashTable.new

h.insert("all")

h.render_list