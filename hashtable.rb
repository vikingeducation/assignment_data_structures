require_relative 'linkedlist.rb'

class HashTable

  def initialize
    
    @buckets = Array.new(26)

  end

  def hash(word)
    word[0].downcase.ord-97
  end

  def insert(word, definition)
  	index = hash(word)
    if @buckets[index].nil?
      @buckets[index] = LinkedList.new
    end
    @buckets[index].append_node(word, definition)
  end

  def render_list
    @buckets.each_with_index do |bucket, letter_index| 

      puts "#{("A".."Z").to_a[letter_index]}"
      puts "==="
      
      if @buckets[letter_index].nil?
      	print "No words for this letter yet!"
      end

      current_node = @buckets[letter_index].head
      until current_node.next.nil? 
        puts "#{current_node.word}: #{current_node.definition}"
        current_node = current_node.next
      end

      puts 

    end
  end

  def define(word)
    index = hash(word)
    
    current_node = @buckets[index].head
    steps = 0

    until current_node.word.downcase == (word.downcase || current_node.nil?) 
      current_node = current_node.next
      steps += 1
    end

    if current_node.nil?
      puts "Not found!"
    else
      puts "#{current_node.word}: #{current_node.definition}"
    end

  end

  def load_dictionary(dictionary)
    File.readlines(dictionary).each do |word|
      self.insert(word.strip, word.strip) 
    end
  end

end

h = HashTable.new
h.load_dictionary("5desk.txt")
h.render_list