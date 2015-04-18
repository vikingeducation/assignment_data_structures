class LinkedList

  Node = Struct.new(:word, :definition, :next)

  def initialize(word, definition)
    @head = Node.new(word, definition, nil)
    @last = @head
    @size = 1
  end

  def read(index)
    node = crawl(index, true)
    puts "#{node.word}: #{node.definition}"
  end

  def add_to_end(word, definition)
    new_node = Node.new(word, definition, nil)
    @last.next = new_node
    @last = @last.next
    @size += 1
  end

  def add_at_position(word, definition, index)
    new_node = Node.new(word, definition)

    before = crawl(index - 1)
    after = crawl(index)

    new_node.next = after
    before.next = new_node

    @size += 1
  end

  def crawl(index, prints = false)
    crawler = @head
    if prints
      index.times do
        puts "Crawler at: #{crawler.word}"
        crawler = crawler.next
      end
    else
      index.times { crawler = crawler.next }
    end
    crawler
  end

end
