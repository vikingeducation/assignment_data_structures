require_relative 'lib/linked_list'



class HashTable 

  attr_reader :buckets, :dictionary

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
      puts "Number of words that start with #{linked_list.head.word[0]}: #{linked_list.count}"
    end
  end

  def define(word)
    if @buckets[hash(word)].nil?
      puts "Sorry that word is not found. In fact, no word starting with that letter exists."
    else
      if @buckets[hash(word)].define(word) 
        puts "The definition of #{word} is #{@buckets[hash(word)].define(word)[0]}"
        puts "It took #{@buckets[hash(word)].define(word)[1]} steps"
        @buckets[hash(word)].define(word)
      else
        puts "That word doesn't exist"
      end
    end
  end

  def file_load(path)
    @dictionary = File.readlines(path).map(&:chomp)
  end

end


h = HashTable.new
h.file_load("lib/5desk.txt")
h.dictionary.each do |word|
  h.insert([word.downcase, "definition of word is #{word}"])
end
h.render_list
h.define('sync')
h.define('xylophone')







