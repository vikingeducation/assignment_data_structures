require_relative 'linked_list.rb'

class HashTable

  def initialize

    @buckets = Array.new(26)

  end

  def hash(word)
    #a => 0, b=>1 ... z=>25

    initial_letter = word.downcase[0]
    initial_letter.ord - 97

  end

  def insert(word)

    index = hash(word)

    if @buckets[index].nil?
      @buckets[index] = LinkedList.new
    end

    @buckets[index].add_node(word, '')

  end

  def render_list(index)

    if @buckets[index].nil?
      puts "This list is empty"
    else
      @buckets[index].print_list
      puts "The total length of this list is #{@buckets[index].length}"
    end

  end

  def define(word_to_define)

    index = hash(word_to_define)

    if @buckets[index].nil?
      puts "Not found (empty list)"
    else
      @buckets[index].define_node(word_to_define)
    end

  end

end