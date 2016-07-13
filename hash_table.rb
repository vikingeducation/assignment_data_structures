Node = Struct.new(:word, :definition, :next_node)

class HashTable
  attr_reader :buckets

  def initialize
    @buckets= Array.new(26){nil}
  end

  def hash(word)
  #takes a word and returns an array index based on its first letter
    word[0].downcase.ord-97
  end

  def insert(word, definition)
    index = hash(word)
    if @buckets[index]
      @buckets[index].add_node(word, definition)
    else
      @buckets[index] = LinkedList.new
      @buckets[index].add_node(word, definition)
    end
  end

  def render_list
    @buckets.each_with_index do |linked_list ,ind|
      letter = (ind + 97).chr
      if !linked_list.nil?
        count = linked_list.counter
        first_plural = count == 1 ? "is" : "are"
        second_plural = count == 1 ? "" : "s"
        puts "There #{first_plural} #{count} word#{second_plural} for #{letter}"
      else
        puts "There were zero words for #{letter}"
      end
    end
  end

  def define(word_lookup)
    index=hash(word_lookup)
    list=@buckets[index]
    counter=0
    while counter<list.counter
      current_node=list.find_node(counter)
      if current_node.word == word_lookup
        puts "Found definition for #{word_lookup}: #{current_node.definition}" 
        return
      end
      counter +=1
    end
    puts "#{word_lookup} not found"
  end

end

class LinkedList
  attr_reader :first, :last, :counter

  def initialize
    @first=nil
    @last=nil
    @counter = 0
  end

  def add_node(word, definition)
    if @first.nil?
      @first=Node.new(word, definition, nil)
      @last=@first
    else
      new_node=Node.new(word, definition, nil)
      @last.next_node=new_node
      @last=new_node
    end
    @counter += 1
  end

  def find_last_node
    pointer=@first.next_node
    until pointer.nil?
      pointer=pointer.next_node
    end
    pointer
  end

  #The method below uses O(n) to find the specific indexed node
  def find_node(index)
      counter = 0
      current_node = @first
      while counter < index 
        current_node = current_node.next_node
        counter += 1
      end

      puts "Searched #{counter+1} nodes."
      current_node

  end

  #The method below uses O(n) to insert a new node
  def insert_node(index, word, definition)
    node_before_index = find_node(index - 1)
    node_at_current_index = find_node(index)
    new_node = Node.new(word, definition, node_at_current_index)
    node_before_index.next_node = new_node
    @counter += 1
  end

  #The method below uses O(n) to reverse a new node
  def reverse
    #reassign first node to point to nil
    prior_node=nil
    current_node = @first
    next_node = @first.next_node
    current_node.next_node=nil

    while next_node
      prior_node = current_node
      current_node = next_node
      next_node = current_node.next_node
      current_node.next_node = prior_node
    end
    last=@last
    @last=@first
    @first=last
  end

end

h = HashTable.new
h.insert("hi", "a greeting")
h.insert("blue", "a color")
h.insert("box", "a place to put cats")
h.insert("zebra", "black and white animal")
h.define("box")
h.define("hippo")

#h.render_list