require 'linked_list'

class HashTable
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


