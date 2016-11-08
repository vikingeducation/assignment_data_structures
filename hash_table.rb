require_relative 'linked_list'

class HashTable

  def initialize
    @buckets = Array.new
  end

  def hash(key)
    key[0].ord - 97
  end

  def insert(word, definition)
    bucket_index = hash(word)
    unless @buckets[bucket_index]
      list = LinkedList.new
      list.add_node(word, definition)
      @buckets[bucket_index] = list
    else
      @buckets[bucket_index].add_node(word, definition)
    end
  end

  def render_list
    ("A".."Z").each_with_index do |letter, index|
      puts "#{letter}: #{}"
    end
  end

end