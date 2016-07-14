require_relative 'linked_list'

class HashTable
  attr_reader :buckets
  def initialize
    @buckets = []
    26.times do
      @buckets << LinkedList.new
    end
  end

  def hash(word)
    word[0].downcase.ord - 97
  end

  def insert(word)
    @buckets[hash(word)].append(word)
  end

end
