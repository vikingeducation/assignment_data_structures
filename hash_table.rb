require_relative "linked_list.rb"
class HashTable
  attr_accessor :buckets
  def initialize
    @buckets = Array.new(26)
  end

  def insert(word, definition)
    index = hash(word)
    if @buckets[index]
      @buckets[index].add_node(word, definition)
    else
      @buckets[index] = LinkedList.new
      @buckets[index].add_node(word, definition)
    end
  end

  def render_list
    @buckets.each_with_index do |bucket, idx|
      puts "Bucket #{idx}" if !bucket.nil?
      bucket.print_list if !bucket.nil?
    end
  end

  def define(word)
    index = hash(word)
    if @buckets[index]
      if (node = @buckets[index].find_word(word))
        puts "Word #{word} found - #{node.definition}"
        node
      else
        puts "Word not found(1)"
        nil
      end
    else
        puts "Word not found(2)"
        nil
    end
  end

  def hash(word)
    word[0].upcase.ord - 65
  end
end

# h = HashTable.new
# h.insert("apple", "def1")
# h.insert("bpple", "def2")
# h.insert("apple3", "def3")
# p h
# h.render_list
# h.define("zip")
# h1 = HashTable.new
# File.readlines("5desk.txt").each do |line|
#   h1.insert(line.strip, "Definition if #{line.strip} is #{line.strip}")
# end
# h1.define("yum")

