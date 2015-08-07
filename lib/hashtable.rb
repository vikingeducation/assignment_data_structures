require_relative 'linkedlist'

class Hashtable

  def initialize
    @buckets = []
  end

  
  def hash(word)
    chr = word[0]
    ("a".."z").to_a.index(chr)    
  end


  def insert(word, definition)
    index = hash(word)

    if @buckets[index] == nil
      @buckets[index] = LinkedList.new
      @buckets[index].append(word, definition)
    end

  end


  def define(word)
    index = hash(word)

    raise "#{word} not found" if @buckets[index] == nil
    
    @buckets[index].find_word(word)
  end
  
end