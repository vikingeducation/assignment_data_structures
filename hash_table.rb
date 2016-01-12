class HashTable
  def initialize
    @buckets = []
  end

  def hash(word)
    word.downcase[0].ord - 97
  end

  
end
