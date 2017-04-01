class LinkedList
  Node = Struct.new(:word, :definition, :next_node)

  def initialize
    @first = nil
    @last = nil
  end

  # O(n)
  def read(index = nil)
    if @first.nil?
      puts "There are no nodes available to read."
      return nil
    end

    output = []
    crawler = @first

    # if no index is provided, assume we want to read all available nodes.
    if index.nil?
      i = 0
      while (crawler) do
        output << "#{i}: #{crawler.word} - #{crawler.definition}"
        i += 1
        crawler = crawler.next_node
      end

      return output
    end

    # if an index is provided, check that it's valid.
    if index < 0 || !index.is_a?(Integer)
      puts "Invalid index."
      return nil
    end

    # if an index is provided, read available nodes up to that index.
    for i in (0..index)
      output << "#{i}: #{crawler.word} - #{crawler.definition}"

      crawler = crawler.next_node
      break if crawler.nil?
    end

    output
  end

  # O(1)
  def insert_at_end(word, definition)
    node = Node.new(word, definition, nil)

    if @last.nil?
      @last = node
      @first = node
    else
      @last.next_node = node
      @last = node
    end
  end

  # O(n), where n is the index specified
  def insert_at(index, word, definition)
    # invalid index
    if index < 0
      puts "Invalid index."
      return nil
    end

    # inserting at the beginning
    if index == 0
      if @first.nil?
        @first = Node.new(word, definition, nil)
        @last = @first
      else
        node = Node.new(word, definition, nil)
        node.next_node = @first
        @first = node
      end
    else
      crawler = @first
      (index - 1).times { crawler = crawler.next_node }

      # inserting at the last node
      if crawler == @last
        node = Node.new(word, definition, nil)
        crawler.next_node = node
        @last = node
      else
        # inserting in between the first and last nodes
        node = Node.new(word, definition, crawler.next_node)
        crawler.next_node = node
      end
    end
  end

  # O(n), in-place reversal.
  def reverse
    if @first == @last
      puts "No nodes to reverse."
      return nil
    end

    cursor = nil
    next_node = nil
    @last = @first

    while (@first) do
      next_node = @first.next_node
      @first.next_node = cursor
      cursor = @first
      @first = next_node
    end

    cursor
  end

  # O(n)
  def length
    0 if @first.nil?

    len = 0
    crawler = @first
    while (crawler)
      crawler = crawler.next_node
      len += 1
    end

    len
  end
end
