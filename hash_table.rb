require_relative 'linked_list.rb'

class HashTable
  attr_accessor :buckets
  def initialize
    @buckets = []
  end

  def hash(word)
    ('a'..'z').each_with_index do |letter, i|
      return i if /#{letter}/ =~ word[0].downcase
    end
  end

  def insert definitions
    index = hash(definitions[0])
    bucket = @buckets[index]
    if bucket.nil?
      bucket = LinkedList.new
      bucket.add_first_node(definitions)
    else
      bucket.add_node(definitions)
    end
    @buckets[index] = bucket
  end

  def render_list
    @buckets.each_with_index do |bucket, index|
      next if bucket.nil?
      puts "Group:  #{Array('A'..'Z')[index]}"
      bucket.print_list
      puts "*" * 20
    end
  end

  def define(word)
    index = hash(word)
    bucket = @buckets[index]
    if bucket.nil?
      return 'Not found'
    else
      results = bucket.search_node(word)
      return 'Not found' if results.nil?
      return results
    end
  end

end
