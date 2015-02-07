require './linked_list.rb'
require 'pry'

class HashTable
  def initialize
    @alphabet_array = ('a'..'z').to_a
    @buckets = []
    File.open("5desk.txt", "r+") do |file|
    @dictionary_array = file.readlines.map{|line| line.strip}
    end
    @dictionary_array.each do |word|
      so_insert(word)
    end
    @final_node_count = 0
  end

  def so_hash(word)
    i = 0
    @alphabet_array.each do |letter|
      # binding.pry
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

  def add_words(nodes, word, definition=nil)
    nodes.add_node(word)
    nodes.add_node(definition)
  end

  def search_words(word_search)
    @final_node_count = 0
    @buckets.each do  |list|
      if find_value(word_search)
        @final_node_count += list.node_count
        puts "Total steps taken: #{@final_node_count}"
      else
        @final_node_count += list.node_count
      end
    end
  end

  def so_insert(word, definition=nil) 
      # binding.pry
    if @buckets[so_hash(word)] == nil
      @buckets[so_hash(word)] = new_words(word,definition)
    else
      binding.pry
      add_words(@buckets[so_hash(word)], word, definition)
      # @buckets[so_hash(word)] << new_words(word,definition)
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

  # def define(word)
    # @buckets[so_hash(word)]
end
schwaddy = HashTable.new
# binding.pry
bill = ha