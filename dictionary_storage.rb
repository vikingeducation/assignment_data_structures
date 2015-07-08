Word = Struct.new(:word,:definition, :next)

class LinkedList

  attr_reader :head, :tail, :nodes

  def initialize(first_node = nil)
    @head = first_node
    @tail = first_node
    @nodes = 0
  end

  def add_first_node(word, definition)
    @head = Word.new(word, definition, nil)
    @tail = @head
    @nodes +=1
  end

  # If at end of list O(1)
  def add_node(word, definition)
    if @head.nil?
      add_first_node(word, definition)
    else
      new_node = Word.new(word, definition, nil)
      @tail.next = new_node
      @tail = new_node
      @nodes +=1
    end
    #puts "Added new word: #{word} with definition: #{definition}."
  end

  # Big O time: O(n)
  def read_node(pos)
    counter = 0
    current_node = @head
    until counter >= pos
      current_node = current_node.next
      counter += 1
    end

    puts "Found word #{word} with definition #{definition} at position #{pos}"
  end

  # If not inserting at end of list, O(n)
  def insert_node(word, definition, pos=nil)
    pos ? insert_at_position(word, definition, pos) : add_node(word, definition)
  end

  def insert_at_position(word, definition, pos)
    counter = 0
    current_node = @head
    until counter >= pos - 1
      current_node = current_node.next
      counter += 1
    end
    old_node = current_node.next
    current_node.next = Word.new(word, definition, old_node)
    @nodes +=1
  end

  # Runs in O(n) time. (In place reversal)
  def reverse
    return if @nodes < 2
    if @nodes == 2
      @tail.next = @head
      @head.next = nil
      @head, @tail = @tail, @head
    else
      #initial setup
      old_start = @head
      old_end = @tail
      current_node = @head
      next_node = current_node.next
      current_node.next = nil


      node_after = next_node.next
      until node_after == @tail

        next_node.next = current_node
        current_node = next_node
        next_node = node_after
        node_after = next_node.next

      end
      next_node.next = current_node
      node_after.next = next_node

      @tail = old_start
      @head = old_end
    end
  end

  def search(word)
    counter = 0
    current_node = @head
    until current_node.nil?
      counter += 1
      if current_node.word.downcase == word.downcase
        puts "It took #{counter} steps to locate #{word}!"
        return current_node.definition
      end
      current_node = current_node.next
    end
    "Sorry, #{word} was not found"
  end

  def prints
    current_node = @head
    until current_node.nil?
      puts "Found word #{current_node.word} with definition #{current_node.definition}"
      current_node = current_node.next
    end
  end

end

# test = LinkedList.new

# test.add_node("a", "a")
# test.add_node("b", "b")
# test.add_node("c", "c")
# test.add_node("e", "e")
# test.insert_at_position("d","d", 3)
# test.prints
# test.reverse
# puts "List should now be reversed!"
# test.prints

class HashTable

  def initialize
    @bucket_count = 26
    @buckets = Array.new(@bucket_count){ }
    @max_size = 1000
  end

  def hash(word)
    word.split("").reduce(0) {|acc, char| acc += char.ord}
    #return word[0].downcase.ord - 97
  end

  def insert(word, definition)
    if @buckets[hash(word)].nil?
      @buckets[hash(word)] = LinkedList.new
      @buckets[hash(word)].insert_node(word, definition)
    else
      @buckets[hash(word)].insert_node(word, definition)
    end
  end

  def render_list
    @buckets.each do |bucket|
      bucket.prints
    end
  end

  def bucket_size(n)
    @buckets[n].nodes
  end

  def print_bucket_size(n)
    puts "The size of bucket #{n} is #{@buckets[n].nodes}"
  end

  def define(input)
    puts @buckets[hash(input)].search(input)
  end

  def num_buckets
    @bucket_count
  end

  def populate
    lines = File.readlines("5desk.txt")
    lines.map! {|line| line.strip}

    lines.each_with_index do |line, index|
      insert(line, "This is word \##{index}!")
    end
  end

  def buckets_too_large
    @bucket_count.times do |bucket|
      if bucket_size.bucket
    end
  end

end

# htable = HashTable.new


