Node.Struct.new(:word, :meaning, :next)
class LinkedLists
  attr_accessor :head, :tail

  def initialize(first_node = nil)
    @head = first_node
    @tail = first_node
  end

  def add_first_node(word, meaning)
    @head = Node.new(word, meaning, nil)
    @tail = @head
  end

  def find_node(index)
    current_node = @head
    index.times do
      current_node = current_node.next
      counter += 1
    end
    puts "Found node at index #{index} with value of #{current_node}."
    puts "Number of steps was #{counter}"
  end

  def find_word(word)
    current_node = @head
    counter = 0
    until node.word == word || node.nil?
      counter += 1
      current_node = current_node.next
    end
    puts "#{counter} steps to find #{word}"
    return current_node
  end

  def size
    return 0 if @head.nil?
    count = 1
    current_node = @head
    until current_node == @tail
      count += 1
      current_node = current_node.next
    end
    return count
  end

  def insert_node(word, meaning, index)
    inserted_node = Node.new(word, meaning)
    if index < 1
      inserted_node.next = @head
      @head = inserted_node
    else
      prev = self.find(index - 1)
      fol = self.find(index)
      prev.next = inserted_node
      inserted_node.next = fol
      @tail = inserted_node if fol.nil?
    end
  end

  #Add Node is Constant time
  def add_node(word, meaning)
    if @head.nil?
      add_first_node(word, meaning)
    else
      new_node = Node.new(word, meaning)
      @tail.next = new_node
      @tail = new_node
    end
  end

  #Big O is Linear time O(n)
  def self.reverse
    @head = self.next
    self.next = previous
    if @head
      reverse(@head)
    else
      self
    end
  end
end
