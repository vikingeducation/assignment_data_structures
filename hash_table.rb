require_relative 'linked_list.rb'

Word = Struct.new(:word, :definition)

class HashTable
  attr_accessor :buckets

  LETTER_ARRAY = ("a".."z").to_a

  def initialize
    @buckets = Array.new(26, nil)
  end

  def hash(word)
    if word.is_a?(String)
       LETTER_ARRAY.index(word[0].downcase)
    else
       LETTER_ARRAY.index(word.word[0].downcase)
    end   
  end

  def insert(word) # examine case where you insert an element already in the list
    index = hash(word)

    if @buckets[index] == nil
      linked_list = LinkedList.new
      linked_list.add_node(word)
      @buckets[index] = linked_list
    else
      @buckets[index].add_node(word)
    end
  end

  def open_dictionary

    dict = File.readlines("5desk.txt")
    dict.each do |item|

      item = item.strip
  
      if item.length > 0
        new_word = Word.new(item, "placeholder for #{item}")
        insert(new_word)
      end  
    end
    #dict.close
  end

  def render_list
    @buckets.each_with_index do |item, index|
      unless item == nil
        puts "For #{LETTER_ARRAY[index]} in bucket #{index}:\
              #{item.length} definition(s) exist"
      end
    end
  end

  # Should be O(1) if hash is optimized
  def define(label)
    index = hash(label)

    if @buckets[index] == nil
      puts "No definition exists"
    else  
      linklist_index = @buckets[index].find_word(label)
      
      if linklist_index
        puts "Found: #{label.rjust(8," ")} in position #{linklist_index.to_s.rjust(4," ")} of LinkList taking #{linklist_index + 1} steps"
      else
        puts"Definition #{label} not found!"
      end
    end
  end 
end

h = HashTable.new
# word1 = Word.new("hello", "a common greeting")
# word2 = Word.new("house", "a structure to live in")
# word3 = Word.new("cat", "a small furry animal")
# h.insert(word1)
# h.insert(word2)
# h.insert(word3)

h.open_dictionary
h.define("hello")
h.define("house")
h.define("help")
h.define("cat")
h.define("car")