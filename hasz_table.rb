


Node = Struct.new(:word, :def, :next)

class LinkedList
  attr_accessor :head, :last

  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end

  def add_first_node(word, definition = nil)
    @head = Node.new(word, definition, nil)
    @last = @head
  end

  def add_node(word, definition = nil)
    if @head == nil
      add_first_node(word, definition)
    else
      new_node = Node.new(word, definition, nil)
      @last.next = new_node
      @last = new_node
    end
  end

  # The Big-O of this operation is k = index
  def insert_node(index, word, definition = nil)
    step = 0
    current_node = @head
    previous_node = nil
    while step < index
      previous_node = current_node
      current_node = current_node.next
      step += 1
    end
    next_node = current_node.next
    current_node = Node.new(word, definition, next_node)
    previous_node.next = current_node
  end


  # The Big-O of this operation is n if the array if big especially
  def find_node(index)
    step = 0
    current_node = @head
    while step < index
      current_node = current_node.next
      step += 1
      puts "Taking step no #{step}"
    end
    puts "The node under index #{index} is #{current_node}"
    current_node
  end

  def push_all_to_stack(head_node)
    stack = []
    current_node = head_node
    while current_node.next != nil
      stack << current_node
      current_node = current_node.next
    end
    stack << @last
    return stack
  end

  def create_linked_list_from_stack(stack)
    new_head = stack.pop
    current_node = new_head
    while stack.length > 0
      current_node.next = stack.pop
      current_node = current_node.next
      if stack.size == 0
        current_node.next = nil
        @last = current_node
      end
    end
    new_head
  end

  def reverse
    stack = push_all_to_stack(@head)
    new_head = create_linked_list_from_stack(stack)
    @head = new_head
    self
  end

#stack = [1,2,3, 4,5 ]
# old_list = 1->2->3->4->5
# new_list = 5->4->3->2->1
    # current_node = @head
    # previous_node = nil
    # new_last = @last
    # puts "DBG: new_last.next = #{new_last.next.inspect}"
    # while new_last.next == nil
    #   puts "DBG: new_last.next = #{new_last.next.inspect}"
    #   if current_node != @head
    #     next_node = current_node.next
    #     current_node.next = previous_node
    #     previous_node = current_node
    #     current_node = next_node
    #     if current_node == @last
    #       new_last.next = previous_node
    #       @last = new_last
    #     end
    #   else
    #     current_node = current_node.next
    #     @head.next = nil
    #     @last = @head
    #     previous_node = @last
    #   end
    # end
    # self

end

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
    if @buckets[idx] == nil
      @buckets[idx] = LinkedList.new
      @buckets[idx].add_first_node(word, definition)
    else
      @buckets[idx].add_node(word, definition)
    end
  end

  def render_bucket(bucket)
    if bucket != nil
      current_node = bucket.head
      puts " " * 10 + "#{current_node.word}"
      loop do
        current_node = current_node.next
        break if current_node == nil
        puts " " * 10 + "#{current_node.word}"
      end
    end
  end

  def render_list
    puts "Here is the printout of the dictionary HasTable"
    puts
    26.times do |idx|
      if @buckets[idx] != nil
        chosen_bucket = @buckets[idx]
        puts "The bucket name is #{ALPHABET[idx]} and it's content is:  "
        render_bucket(chosen_bucket)
      end
    end
  end

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

class DictionaryLoader

  def initialize(file_location)
    @file_location = file_location
  end

  def load
    arr = []
    file_lines = File.readlines(@file_location)
    file_lines.each do |line|
      arr << line.strip.downcase.capitalize
    end
    arr
  end

end

class DictionaryTable
  attr_reader :hash_dictionary

  def initialize
    @hash_dictionary = HashTable.new
  end

  def load_file_into_hash
    dictionary = DictionaryLoader.new("dictionary.txt").load
    dictionary.each { |word| @hash_dictionary.insert(word, "The definition of #{word} is #{word}")
    }
    return
  end

end

# dict = HashTable.new
# dict.insert("catastrophy", "something bad")
# dict.insert("cat", "animal loved by kids")
# dict.insert("house", "place where you live")
