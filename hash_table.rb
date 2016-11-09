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
    end
  end

end

h = HashTable.new
h.insert('bob')
h.insert('bill')
h.insert('pramod')
h.insert('kenny')
h.insert('kenny again')
h.render_list