require_relative 'linkedlist'

class Hashtable

  def initialize
    @buckets = []
    @letters = ("a".."z").to_a
  end

  
  def hash(word)
    chr = word[0]
    @letters.index(chr)    
  end


  def insert(word, definition)
    index = hash(word)

    if @buckets[index] == nil
      @buckets[index] = LinkedList.new
      @buckets[index].append(word, definition)
    else
      @buckets[index].append(word, definition)
    end

  end


  def define(word)
    index = hash(word)

    raise "#{word} not found" if @buckets[index] == nil
    
    @buckets[index].find_word(word).definition
  end


  def render_table
    (0..25).each do |index|

      next if @buckets[index] == nil

      print "\n"
      print "There are #{@buckets[index].node_count} words beginning"
      print " with the letter \"#{@letters[index].upcase}\":\n"

      @buckets[index].render_list

    end    
  end


  def load_dictionary
    dictionary = DictionaryLoader::open("lib/5desk.txt")
    
    dictionary.each do |word|
      insert(word, "The definition of the word \'#{word}\' is \'foobar\'")
    end
  end
  
end



class DictionaryLoader
 
  def self.open(filename)
    output = []
    
    File.readlines(filename).each do |line|
      output << line.strip.downcase
    end
    
    output
  end
  
end