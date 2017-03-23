require_relative "linked_list"

class HashTable

  attr_reader :buckets

  def initialize 
    @buckets = []
  end

  def hash(word, definition = nil)
    first_letter = word.split("").find { |letter| letter.downcase.ord >= 97 }.downcase
    first_letter.ord - 97
  end

  def insert(word, definition = nil)
    if @buckets[hash(word)].nil?
      @buckets[hash(word)] = LinkedList.new
      @buckets[hash(word)].add_first_node(word, definition)
    else
      @buckets[hash(word)].add_node(word, definition)
    end
  end

  def render_list
    @buckets.each do |bucket|
      counter = 1
      current_node = bucket.head unless bucket.nil?
      if bucket.nil?
        puts "No words in this bucket!"
      elsif current_node.next_node.nil?
        puts "#{(@buckets.index(bucket) + 97).chr.upcase}: 1"
      else
        while current_node.next_node != nil
          counter += 1
          current_node = current_node.next_node
        end
        puts "#{(@buckets.index(bucket) + 97).chr.upcase}: #{counter}"
      end
    end
    nil
  end

  def define(word)
    if @buckets[hash(word)].nil?
      puts "Word is not found!"
      return nil
    end

    current_list = @buckets[hash(word)]
    current_node = current_list.head
    return current_node.definition if current_node.word == word
    
    until current_node.next_node == nil
      current_node.word == word ? current_node.definition : current_node = current_node.next
    end
  end

  def load_dictionary(file_name)
    arr = File.readlines(file_name)
    clean_words = arr.map { |word| word.strip }

    clean_words.each { |word| insert(word) }
  end

end

