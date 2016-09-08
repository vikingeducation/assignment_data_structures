require_relative 'linkedlist'

class HashTable
  attr_accessor :buckets

  def initialize
    @buckets = []
  end

  def insert(word)
    index = hash(word[0])

    bucket = @buckets[index]

    if bucket.nil?
      bucket = LinkedList.new
      bucket.add_first_node(word)
    else
      bucket.insert_nodes(word)
    end
    @buckets[index] = bucket
  end

  private

  def hash(word)
    word.downcase.ord - 97
  end
end
