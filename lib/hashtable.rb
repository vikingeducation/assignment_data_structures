require_relative 'dictionaryUI.rb'
require_relative 'linked_list.rb'

class HashTable


  # Hash function to index into an array
  # - sum value of each letter - sum of value of all letters and modulo - .ord of the value of letter better than first letter of string
  # e.g. use the first letter of the string to help to index into the array
  # Use the returned number - key - use that index into array and then have linked list to store the info into the right bucket

  # linked list stored into the array

  attr_accessor :buckets, :dictionary_arr

  def initialize
    @buckets = Array.new(26)
    dictionaryUI = DictionaryUI.new
    dictionaryUI.run
    @dictionary_arr = dictionaryUI.dictionary.words
  end

  def generate_codes
    @dictionary_arr.each do |word|
      ref = hash(word)
      insert(ref, word, "The definition of #{word} is #{word}")
    end
  end

  def hash(word)
    code = word[0].upcase.ord - 65
  end

  def render_list
    @buckets.each_with_index do |sub_list|
      sub_list.print_list
    end
  end

  def define(word)
    hash_loc = hash(word)
    steps = 0
    if(@buckets.include?(hash_loc))
      ll = @buckets[hash_loc]

      while(ll.next?)
        if (ll.word.upcase == word.upcase)
          steps += 1
          puts "The definition of #{word} is #{ll.defn}"
          break
        else
          ll.next
          steps += 1
        end
      end
    else
      puts "Word: #{word} not found in dictionary"
    end
    puts "It took #{steps} steps to run."
  end


private

# test this separately

  def insert(key, word, defn)
    if(@buckets.include?(key))
      @buckets[key] += add_node(word, defn)
    else
      ll = LinkedList.new
      @buckets[key] = ll.add_node(word, defn)
    end
  end

end

