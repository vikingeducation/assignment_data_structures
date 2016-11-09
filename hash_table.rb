require_relative 'linked_list'

class HashTable

  def initialize 
    @buckets = []
  end

  def hash(word)
    first_letter = word[0].downcase   
    first_letter.ord - 97    
  end

  def insert(word)    
    if @buckets[hash(word)]
      @buckets[hash(word)].append_node(word)
    else
      @buckets[hash(word)] = LinkedList.new
      @buckets[hash(word)].add_first_node(word)
    end
  end

  def render_list
    @buckets.each_with_index do |bucket, index|
      next if bucket.nil?
      puts "Bucket #{index} content:"
      bucket.read_node(bucket.length-1)
      puts
    end
  end

  def define(word)
    list = @buckets[hash(word)] 
    return "Not Found!" if list.nil?

  end

end

h = HashTable.new

Word = Struct.new(:word, :definition)

h.insert(Word.new('bob', 'a person named bob'))
h.insert(Word.new('bill', 'a person named bill'))
h.insert(Word.new('charlie', 'a person named charlie'))
h.insert(Word.new('kenny', 'a person named kenny'))
h.insert(Word.new('pramod', 'a person named pramod'))
h.render_list