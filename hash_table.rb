require_relative 'linked_list'

class HashTable

  def initialize(buckets)
    @buckets = buckets
  end

  def hash(word)
    word[0].downcase.ord - 97
  end

  def insert
  end

  def define(word)
  end
end

h = HashTable.new("buckets")

puts h.hash("all")