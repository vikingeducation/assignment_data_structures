Node = Struct.new(:word, :next_node)




class LinkedList

  attr_accessor :head, :last

  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end


# Big O time = O(n)
  def read(index)
    counter = 0
    current_node = @head
    while index >= counter
      puts "Node at index #{counter}: #{current_node.word}"
      break if current_node.next_node.nil?
      current_node = current_node.next_node
      counter += 1
    end

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

    puts "Added a node with value #{word}"

  end

end


list = LinkedList.new

50.times do |i|
  list.add_node("#{i}")
end

list.read(51)


first.next_node = second
second.next = third
...

third.next = second
sec.nex = first
first.nex = nil










