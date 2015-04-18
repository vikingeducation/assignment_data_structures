require './linkedlist.rb'

class Hashtable

  def initialize
    @buckets = [nil] * 26
  end

  def hash(word)
    letters = ('a'..'z').to_a
    letters.index(word[0]) if letters.include?(word[0].downcase)
  end

  def insert(word, definition)
    index = hash(word)
    if @buckets[index] == nil
      @buckets[index] = LinkedList.new(word, definition)
    else
      @buckets[index].add_to_end(word, definition)
    end
  end

  def define(word)
    @buckets.each_with_index do |list, index|
      unless list == nil
        list.search(word, index)
      else
        puts "Bucket #{index} is empty."
      end
    end
  end

  def render_list
    @buckets.each_with_index do |list, index|
      unless list == nil
        puts "In bucket #{index}:"
        list.read_entire
        puts ''
      end
    end
  end

end
