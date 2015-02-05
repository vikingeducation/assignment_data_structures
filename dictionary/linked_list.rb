class LinkedList
  attr_reader :head,:last

  Node = Struct.new(:word,:definition,:next)

  def initialize(word, definition)
    @head = Node.new(word, definition)
    @last = head
  end

  def insert_node_at_index(index, word, definition)
    before = crawl_to(index-1)
    after = crawl_to(index)
    before.next = Node.new(word, definition)
    before.next.next = after
  end

  def add_node_to_end(word, definition)
    @last.next = Node.new(word, definition)
    @last = @last.next
  end

  def read_node(index)
    node = crawl_to(index)
    puts "Word: #{node.word}"
    puts "Def: #{node.definition}"
  end

  def crawl_to(target)
    node = head
    target.times { node = node.next }
    return node
  end
end