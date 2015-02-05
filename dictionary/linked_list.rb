class LinkedList
  attr_reader :head,:last,:length

  Node = Struct.new(:word,:definition,:next)

  def initialize(word, definition)
    @head = Node.new(word, definition)
    @last = head
    @length = 1
  end

  def insert_node_at_index(index, word, definition)
    before = crawl_to(index-1)
    after = crawl_to(index)
    before.next = Node.new(word, definition)
    before.next.next = after
    @length += 1
  end

  def add_node_to_end(word, definition)
    @last.next = Node.new(word, definition)
    @last = @last.next
    @length += 1
  end

  def read_node(index)
    node = crawl_to(index)
    puts "#{node.word}, #{node.definition}"
  end

  def crawl_to(target)
    node = head
    target.times { node = node.next }
    return node
  end

  def read_whole_list
    0.upto(length-1) do |index|
      read_node(index)
    end
  end

  def search_for(word)
    node = head
    steps = 1
    until node.word == word || node.next.nil?
      node = node.next
      steps += 1
    end
    if node.word == word
      puts "#{node.word}, #{node.definition}"
    else
      puts "Sorry, I couldn't find that word."
    end
    return steps
  end
end