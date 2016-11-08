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
      bucket_length = @buckets[index] ? @buckets[index].length : 0
      puts "#{ letter }: #{ bucket_length }"
    end
  end

  def define(word)
    @buckets[hash(word)]
    # locate correct bucket
    # if bucket empty - not found
    # else iterate through each node
    # searching for matching word
    # when match found return definition
    # if end of list - not found
  end

end

table = HashTable.new

table.render_list
