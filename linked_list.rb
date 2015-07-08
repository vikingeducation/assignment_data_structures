Node = Struct.new(:word, :definition, :next_node)


class LinkedList

  attr_accessor :head, :last

  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end


# Big O time = O(n)
  def read(index = 99999999999)
    counter = 0
    current_node = @head
    while index >= counter
      puts "Node at index #{counter}: #{current_node.word}"
      break if current_node.next_node.nil?
      current_node = current_node.next_node
      counter += 1
    end

  end

  def count
    counter = 1
    current_node = @head
    loop do
      break if current_node.next_node.nil?
      current_node = current_node.next_node
      counter += 1
    end
    counter

  end

# Big O time = O(1)

  def add_first_node(word)
    @head = Node.new(word, nil)
    @last = @head
  end

# Big O time = O(n)

  def add_at_index(index, word)
    counter = 0
    current_node = @head
    loop do
      if counter+1 == index
        new_node = Node.new(word, current_node.next_node)
        current_node.next_node = new_node
        current_node = new_node
        break

      end
      current_node = current_node.next_node
      counter += 1
      break if current_node.next_node.nil?
    end

  end

  def add_node(word)
    if @head.nil?
      add_first_node(word)
    else
      new_node = Node.new(word, nil)
      @last.next_node = new_node
      @last = new_node
    end

    # puts "Added a node with value #{word}"

  end

  def add_definition(word, definition)

    counter = 0
    current_node = @head
    until current_node.word == word
      if current_node.next_node.nil?
        puts "Cannot find #{word}"
        break
      end
      current_node = current_node.next_node
      counter += 1
    end
    current_node.definition = definition
    puts "It took #{counter+1} steps to find #{word}."
    current_node

  end

  def find(word)

    counter = 0
    current_node = @head
    until current_node.word == word
      if current_node.next_node.nil?
        puts "Cannot find #{word}"
        break
      end
      current_node = current_node.next_node
      counter += 1
    end
    puts "It took #{counter+1} steps to find #{word}."
    current_node

  end

  # Big O time = O(n) - is "in place" and iterates once through list

  def reverse

    #Get the last item in the new reversed list
    temp_head = self.shift
    temp_head.next_node = nil
    @last = temp_head

    until @head == nil
      temp = self.shift
      temp.next_node = temp_head
      temp_head = temp
    end

    @head = temp_head

  end

  def shift

    temp = @head
    @head = @head.next_node
    temp

  end

end



class HashTable

  def initialize(buckets = [])

    @buckets = buckets
    @render = {}

  end

  def hash(word)

    word[0].downcase.ord - 97

  end

  def insert(word)

    @buckets[hash(word)] = LinkedList.new if @buckets[hash(word)].nil?
    @buckets[hash(word)].add_node(word)

  end

  def render_list

    26.times do |i|
      next if @buckets[i].nil?
      @render[(i + 97).chr] = @buckets[i].count
    end
    p @render

  end

  def define(word)

    definition = @buckets[hash(word)].find(word).definition

    if definition.nil?
      puts "Sorry, definition not found"
    else
      definition
    end

  end

  def add_definition(word, definition)

    @buckets[hash(word)].add_definition(word,definition)

  end

end




class Dictionary_Loader

  def initialize(file)

    @file = file

  end

  def load

   dict = File.open(@file, "r")
   words = dict.readlines
   words.map! { |word| word.strip }

  end

end

table = HashTable.new
dictionary = Dictionary_Loader.new("dictionary.txt")

dictionary.load.each do |word|
  table.insert(word)
end

table.render_list

table.add_definition("Apostle", "Follower of Jesus")

puts table.define("Apostle")










