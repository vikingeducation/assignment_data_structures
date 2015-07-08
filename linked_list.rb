Node = Struct.new(:word, :next_node)




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
    @head = Node.new(word,nil)
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



end

table = HashTable.new

50.times do |i|
  table.insert("number: #{i}")
end

table.insert("Apostle")

table.render_list










