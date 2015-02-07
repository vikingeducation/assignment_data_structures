class HashTable
  def initialize
    @buckets = []
    @dictionary_array = file.readlines.map{|line| line.strip}
    @dictionary_array.each do |word|
      so_insert(word)
    end
  end

  def so_hash(word)
    i = 0
    (a..z).each do |letter|
      if word.downcase[0] == letter
        return i
      else
        i += 1
      end
    end
  end

  def new_words(word, definition=nil)
    pairage = LinkedList.new
    pairage.add_node(word)
    pairage.add_node(definition)
    return pairage
  end 

  def so_insert(word, definition=nil) 
    if @buckets[so_hash(word)] == nil
      @buckets[so_hash(word)] = new_words(word,definition)
    else
      @buckets[so_hash(word)] += new_words(word,definition)
    end
  end

  def render_list
    i = 0
    alphabet_array = (a..z).to_a
    while i < 26
      puts "Letter #{alphabet_array[i]}"
      @buckets[i].print_list
      puts "\n\n"
    end
  end
end