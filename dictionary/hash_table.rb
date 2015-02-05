require_relative 'linked_list'

class HashTable

  attr_reader :buckets

  def initialize
    @buckets = [nil] * 26
  end

  def hash(word)
    ("A".."Z").to_a.index word[0].upcase
  end

  def insert(word,definition)
    i = hash(word)
    if @buckets[i].nil?
      @buckets[i] = LinkedList.new(word,definition)
    else
      @buckets[i].add_node_to_end(word,definition)
    end
  end

  def render_list
    @buckets.each do |letter|
      if letter.nil?
        next
      else
        letter.read_whole_list
      end
    end
  end

  def define(word)
    i = hash(word)
    steps = 1
    if @buckets[i].nil?
      puts "Sorry, I couldn't find that word."
    else
      steps += @buckets[i].search_for word
    end
    puts "It took #{steps} step(s)."
  end
end