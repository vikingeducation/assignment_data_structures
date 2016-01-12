require_relative 'linked_list.rb'

Word = Struct.new(:word, :definition)

class HashTable
  attr_accessor :buckets

  LETTER_ARRAY = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
  def initialize
    @buckets = Array.new(26, nil)
  end

  def hash(word)
    LETTER_ARRAY.index(word.word[0])
  end

  def insert(word) # examine case where you insert an element already in the list
    index = hash(word)
    if @buckets[index] == nil
      linked_list = LinkedList.new
      linked_list.add_node(word)
      @buckets[index] = linked_list
      puts "#{@buckets[index].head.data}"
    else
      @buckets[index].add_node(word)
      puts "#{@buckets[index].head.next.data}"
    end
  end

  def render_list
    @buckets.each_with_index do |item, index|
      unless item == nil
        puts "#{LETTER_ARRAY[index]}: #{item.length}"
      end
    end
  end

  def define(word)
    label = word.word
    index = hash(word)
    if @buckets[index] == nil
      puts "No definition exists"
    else
      
    end
  end
end

h = HashTable.new
word1 = Word.new("hello", "a common greeting")
word2 = Word.new("house", "a structure to live in")
h.insert(word1)
h.insert(word2)

h.render_list