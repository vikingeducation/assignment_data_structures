require "benchmark"

Node = Struct.new(:word, :definition, :next)

class LinkedList
  attr_accessor :head, :last
  def initialize
    @head = nil
    @last = nil
  end

  # O(1), it's a constant, doesn't depends on the dictionary size ( @last is stored )
  def insert_end(word, definition)
    if @last.nil?
      first_insert(word, definition)
    else
      new_node = Node.new(word, definition, nil)
      @last.next = new_node
      @last = new_node
    end
  end

  def first_insert(word, definition)
    new_node = Node.new(word, definition, nil)
    @head = new_node
    @last = new_node
  end

  # O(n), have to go through the dictionary element, depends on its size
  def insert(word, definition, index)
    new_node = Node.new(word, definition, nil)
    count = 2
    current_node = @head
    next_node = @head.next
    while count < index
      current_node = current_node.next
      next_node = next_node.next
      count += 1
    end
    new_node.next = next_node
    current_node.next = new_node
  end

  def search(word)
    current_node = @head
    count = 1
    until current_node.next == nil
      if current_node.word == word
        return current_node.definition, count
      end
      current_node = current_node.next
      count += 1
    end
    return false, count
  end


  # O(n), it depends on the length of the dictionary
  def read index
    count = 0
    current_node = @head
    while count < index
      print "#{current_node.word}, "
      current_node = current_node.next
      count += 1
    end
    puts
    puts "#{current_node.word} : #{current_node.definition} (index #{index})"
  end

  def print_all
    current_node = @head
    next_node = @head.next
    until current_node.next == nil
      puts "#{current_node.word} : #{current_node.definition}"
      current_node = current_node.next
      next_node = next_node.next
    end
    puts "#{current_node.word} : #{current_node.definition}"
  end

  def count_nodes
    current_node = @head
    count = 1
    until current_node.next == nil
      current_node = current_node.next
      count += 1
    end
    count
  end

  # O(n), n! 
  def reverse
    reverse = false
    until reverse
      
      if @head.next.next == nil
        @head.next.next = @head
        @head.next = nil
        @head, @last = @last, @head
        reverse = true
      else
        current_node = @head
        next_node = @head.next
        until next_node.next == nil
          current_node = current_node.next
          next_node = next_node.next
        end
        next_node.next = current_node
        current_node.next = nil
      end
    end
  end

end


class HashTable
  attr_accessor :buckets
  def initialize
    @buckets = []
  end

  def insert word
    idx = hash word
    @buckets[idx] = LinkedList.new if @buckets[idx].nil?
    @buckets[idx].insert_end(word, "#{word} definition")
  end

  def hash word
    first_letter = word[0].upcase.ord - 65
  end

  def render_list
    @buckets.each_with_index do |bucket, index|
      if bucket.nil?
        puts "0 nodes"
      else
        puts "#{bucket.count_nodes} nodes, (#{(index+65).chr})"
      end
    end
  end

  def define word
    idx = hash word
    if @buckets[idx].nil?
      puts "Sorry, not Found"
    else
      result, count = @buckets[idx].search word
      result ? (puts "#{word}: #{result}, found in #{count} moves") : (puts "Sorry, not found. #{count} moves done")
    end
  end


end

hash = HashTable.new

dic = []
File.readlines("5desk.txt").each do |line|
  dic << line.strip
end
puts dic.length

Benchmark.bm do |bm|
  bm.report("insert dic with HashTable") do
    dic.each do |word|
      hash.insert word
    end
  end
end

hash.define "confuse"
hash.define "rgezrgfoi"

hash.render_list

























