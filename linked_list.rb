Node = Struct.new(:word, :definition, :next)

class LinkedList
  attr_reader :head, :tail

  def initialize(head = nil)
      first_node.nil?
      @head = head
  end

  def add_first_node(word, definition)
    @head = Node.new(word, definition, nil)
    @tail = @head
  end

  def find_word(word)
    node = head
    steps = 0
    until node.word == word || node == nil
      steps += 1
      puts "#{steps} steps so far"
      node = node.next
    end
    return node
  end

  def size
    return 0 if @head.nil?
    count = 1
    node = @head

    until node == @tail
      count += 1
      node = node.next
    end

    count
  end

  def splice(word, definition, index)
    new_node = Node.new(word, definition)

    if index < 1
      new_node.next = @head
      @head = new_node
    else
      before = self.find(index - 1)
      after = self.find(index)
      before.next = new_node
      new_node.next = after
      @tail = new_node if after.nil?
    end
  end

  
end
