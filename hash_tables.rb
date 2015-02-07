require 'pry'
require './linked_list'

class HashTable
  def initialize
    @bucket = Array.new(26)
  end

  def hash word
    return (word[0].downcase.ord) - 97
  end

  def insert (word, definition)
    index = hash(word)
    if @bucket[index].nil?
      @bucket[index] = LinkedList.new
      @bucket[index].add_node(word, definition)
    else
      @bucket[index].add_node(word, definition)
    end
  end

  def render
    @bucket.each do |letter|
      if letter.nil?
        next
      else
        letter.display_linked_list
      end
    end
  end

  def define word
    index = hash(word)
    if @bucket[index].nil?
      puts "Error, that word does not exist"
    else
      @bucket[index].find_word(word)
    end
  end
end