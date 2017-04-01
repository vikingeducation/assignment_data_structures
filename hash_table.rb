require_relative './linked_list'

class HashTable
  def initialize
    @buckets = []
  end

  def hash(word)
    if word.is_a?(String) && word.length > 0
      word[0].upcase.ord - 65
    else
      nil
    end
  end

  def insert(word, definition)
    index = hash(word)
    @buckets[index] = LinkedList.new if @buckets[index].nil?
    @buckets[index].insert_at_end(word, definition)
  end

  def render_list
    @buckets.each_with_index do |bucket, i|
      puts "Bucket #{i} has #{bucket.length} item(s):"
      puts bucket.read
      puts
    end
  end
end
