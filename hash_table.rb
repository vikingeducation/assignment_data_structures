require_relative 'linked_list'

class HashTable

  def initialize
    @buckets = Array.new(26) { LinkedList.new }
  end

  def hash(word)
    word[0].downcase.ord - 97
  end

  def insert(word)
    hashed = hash(word)
    @buckets[hashed].add(Node.new(word, nil))
  end

  def define(word)
    hashed = hash(word)
    value = @buckets[hashed].find(word) 
    value ? value : "No definition found."
  end

  def render_list
    @buckets.each_with_index do |bucket, index|
      print (index + 65).chr
      print ": "
      print bucket.number_of_nodes
      puts
    end
  end
end

h = HashTable.new

h.insert("all")
puts h.define("all")
puts h.define("some")
h.render_list
