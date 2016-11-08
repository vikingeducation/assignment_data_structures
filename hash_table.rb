
class HashTable

  def initialize
    @buckets = Array.new
  end

  def hash(key)
    key[0].ord - 97
  end

end

