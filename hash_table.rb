require_relative './linked_list'

class HashTable
  def initialize
    @buckets = []
  end

  def hash(word)
    if word.is_a?(String) && word.length > 0
      word[0].upcase.ord - 65
    else
      nil
    end
  end

  def insert(word, definition)
    index = hash(word)
    @buckets[index] = LinkedList.new if @buckets[index].nil?
    @buckets[index].insert_at_end(word, definition)
  end

  def render_list
    @buckets.each_with_index do |bucket, i|
      puts "Bucket #{i} has #{bucket.length} item(s):"
      puts bucket.read
      puts
    end
  end

  def define(word)
    index = hash(word)
    bucket = @buckets[index]
    steps_taken = 0

    if bucket.nil?
      puts "Your word '#{word}' was not found in #{steps_taken} steps."
      return nil
    end

    current_node = bucket.first

    while(current_node)
      if current_node.word == word
        puts "Your word '#{word}' was found in #{steps_taken} steps."
        return current_node.definition
      end

      current_node = current_node.next_node
      steps_taken += 1
    end

    puts "Your word '#{word}' couldn't be found in #{steps_taken} steps."
  end
end
