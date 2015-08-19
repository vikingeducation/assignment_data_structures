require_relative 'linked_list.rb'

class HashTable

  def initialize

    @buckets = Array.new(26)

  end

  def hash(word)

    first_letter = word.downcase[0]
    first_letter.ord - 97

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

      raise 'This list is empty!'

    else

      @buckets[index].print_list
      puts "The total length of this list is #{@buckets[index].length}"

    end

  end

  def define(search)

    index = hash(search)

    if @buckets[index].nil?

      raise 'Cannot find, list is empty!'

    else

      @buckets[index].define_node(search)

    end

  end

end