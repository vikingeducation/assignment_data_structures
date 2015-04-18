class LinkedList

  Node = Struct.new(:word, :definition, :next)

  def initialize(word, definition)
    @head = Node.new(word, definition, nil)
    @last = @head
    @size = 1
  end

  def read_steps(index)
    node = crawl(index, true)
    puts "#{node.word}: #{node.definition}"
  end

  def read_at(index)
    node = crawl(index)
    puts "#{node.word}: #{node.definition}"
  end

  def read_entire
    0.upto(@size - 1) do |index|
      read_at(index)
    end
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

  def search(word, index)
    current_node = @head
    total_traversed = 0
    until current_node.word == word || current_node.next == nil
      current_node = current_node.next
      total_traversed += 1
    end
    if current_node.word == word
      puts "Word '#{word}' found with definition: '#{current_node.definition}' in bucket #{index}."
      puts "It took #{total_traversed} traversals."
      exit
    else
      puts "Word not found in bucket #{index}."
    end
  end

  def crawl(index, prints = false)
    crawler = @head
    if prints
      index.times do
        puts "Crawler at: #{crawler.word}"
      end
    else
      index.times { crawler = crawler.next }
    end
    crawler
  end

end
