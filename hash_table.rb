require_relative "linked_list"


class HashTable
  attr_reader :buckets

  ALPHABET = ("a".."z").to_a

  def initialize
    @buckets = Array.new(26)
  end

  def hash(word)
    word.downcase.ord - 97
  end

  def insert(word, definition = nil)
    idx = self.hash(word)
    @buckets[idx] = LinkedList.new if @buckets[idx] == nil
    @buckets[idx].add_node(word, definition)
  end

  # def render_bucket(bucket)
  #   if bucket != nil
  #     current_node = bucket.head
  #     puts " " * 10 + "#{current_node.word}"
  #     loop do
  #       current_node = current_node.next
  #       break if current_node == nil
  #       puts " " * 10 + "#{current_node.word}"
  #     end
  #   end
  # end

  def render_list
    @buckets.size.times do |idx|
      counter = 0
      if @buckets[idx] != nil
        current_node = @buckets[idx].head
        print "#{current_node.word}(#{current_node.def})".ljust(13)
        while !current_node.next.nil?
          current_node = current_node.next
          print "#{current_node.word}(#{current_node.def})".ljust(13)
          counter += 1
        end
        puts
      end
    end
  end



  # def render_list
  #   puts "Here is the printout of the dictionary HasTable"
  #   puts
  #   26.times do |idx|
  #     if @buckets[idx] != nil
  #       chosen_bucket = @buckets[idx]
  #       puts "The bucket name is #{ALPHABET[idx]} and it's content is:  "
  #       render_bucket(chosen_bucket)
  #     end
  #   end
  # end

  def define(searched_word)
    idx = self.hash(searched_word)
    chosen_bucket = @buckets[idx]
    current_node = chosen_bucket.head
    step = 1
    loop do
      if chosen_bucket == nil || current_node == nil
        puts "Word was not found"
        puts "It took #{step} steps to find the answer"
        return
      elsif current_node.word == searched_word
        puts "#{current_node.def}"
        puts "It took #{step} steps to find the answer"
        break
      end
      current_node = current_node.next
      step += 2
    end
  end

end

