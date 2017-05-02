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
    if @buckets[index].empty?
      @buckets[index] = LinkedList.new
    end
    @buckets[index].append_node(word, definition)
  end

  def render_list
    @buckets.each do |letter_index| 

      puts "#{("A".."Z").to_a[letter_index]}: "
      puts "==="
      
      if @buckets[letter_index].nil?
      	print "No words for this letter yet!"
      end

      current_node = @buckets[letter_index].head
      until current_node.next.nil? 
        puts "#{current_node.word: current_node.definition}"
        current_node = current_node.next
      end

      puts 

    end
  end

end