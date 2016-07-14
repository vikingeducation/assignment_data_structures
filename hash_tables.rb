require_relative 'lib/linked_list'



class HashTable 

  attr_reader :buckets

  def initialize
    @buckets = [] # buckets is an array of linked lists
  end

  def hash(word)
    word[0].ord - 97
  end

  def insert(input) 
    word = input[0]
    definition = input[1]
    # linked_list = @buckets[hash(word)]
    if @buckets[hash(word)].nil?
      @buckets[hash(word)] = LinkedList.new(Node.new(word, definition))
    else
      @buckets[hash(word)].add_node_to_end(word, definition) 
    end
  end

  def render_list
    printable_lists = @buckets.select {|list| list != nil}
    printable_lists.each do |linked_list|
      puts "Number of words that with #{linked_list.head.word[0]}: #{linked_list.count}"
    end
  end

  def define(word)
    if @buckets[hash(word)].nil?
      puts "Sorry that word is not found. In fact, no word starting with that letter exists."
    else
      if @buckets[hash(word)].define(word) 
        puts "The definition of #{word} is #{@buckets[hash(word)].define(word)}"
        @buckets[hash(word)].define(word)
      else
        puts "That word doesn't exist"
      end
    end
  end

end


h = HashTable.new
h.insert(['cat', 'feline'])
h.insert(['dog', 'canine'])
h.render_list
h.define('dog')