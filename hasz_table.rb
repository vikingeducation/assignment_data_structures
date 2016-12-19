
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

  def reverse
    current_node = @head
    previous_node = nil
    new_last = @last
    puts "DBG: new_last.next = #{new_last.next.inspect}"
    while new_last.next == nil
      puts "DBG: new_last.next = #{new_last.next.inspect}"
      if current_node != @head
        next_node = current_node.next
        current_node.next = previous_node
        previous_node = current_node
        current_node = next_node
        if current_node == @last
          new_last.next = previous_node
          @last = new_last
        end
      else
        current_node = current_node.next
        @head.next = nil
        @last = @head
        previous_node = @last
      end
    end
    self
  end

end

class HashTable

  ALPHABET = ("a".."z").to_a

  def initialize
    @buckets = Array.new(26)
  end

  def hash(word)
    word.downcase.ord - 97
  end

  def insert(word)
    idx = self.hash(word)
    puts "DBG: idx = #{idx.inspect}"
    puts "DBG: @buckets = #{@buckets.inspect}"
    if @buckets[idx] == nil
      @buckets[idx] = LinkedList.new
      @buckets[idx].add_first_node(word)
    else
      @buckets[idx].add_node(word)
    end
  end

  def render_list
    puts "Here is the printout of the dictionary HasTable"
    26.times do |idx|
      if @buckets[idx] != nil
        chosen_bucket = @buckets[idx]
        print "The bucket name is #{ALPHABET[idx]} and it's content is:  "
        print "#{chosen_bucket.head.word},  "
        pointer = 0
        while true
          pointer += 1
          next_node = chosen_bucket.find_node(pointer)
          break if next_node != chosen_bucket.last.next
          print "#{next_node.word},  "
        end
        print "\n"
      end
    end
  end

  def define(word)

  end

end