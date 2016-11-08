require_relative 'linked_list'


class HashTable < LinkedList

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
      puts 'successfully appended word'
    else
      @buckets[hash(word)] = LinkedList.new
      puts 'created sucessfully new linked list'
    end
  end

end

h = HashTable.new
h.insert('bob')
h.insert('bill')