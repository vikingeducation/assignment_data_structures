class LinkedList
  Node = Struct.new(:data, :next_node)

  def initialize
    @first = nil
    @last = nil
  end

  # O(n)
  def read(index)
    if @first.nil?
      puts "There are no nodes available to read."
      return nil
    end

    current_node = @first
    for i in (0..index)
      puts "Currently at node #{i} with data: #{current_node.data}"
      current_node = current_node.next_node

      if current_node.nil?
        puts "No more nodes left to crawl."
        break
      end
    end

    nil
  end

  # O(1)
  def insert_at_end(data)
    node = Node.new(data, nil)

    if @last.nil?
      @last = node
      @first = node
    else
      @last.next_node = node
      @last = node
    end
  end

  # O(n), where n is the index specified
  def insert_at(index, data)
    # invalid index
    if index < 0
      puts "Invalid index."
      return nil
    end

    # inserting at the beginning
    if index == 0
      if @first.nil?
        @first = Node.new(data, nil)
        @last = @first
      else
        node = Node.new(data, nil)
        node.next_node = @first
        @first = node
      end
    else
      crawler = @first
      (index - 1).times { crawler = crawler.next_node }

      # inserting at the last node
      if crawler == @last
        node = Node.new(data, nil)
        crawler.next_node = node
        @last = node
      else
        # inserting in between the first and last nodes
        node = Node.new(data, crawler.next_node)
        crawler.next_node = node
      end
    end
  end
end
