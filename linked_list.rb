Node = Struct.new(:data, :next_node)

class LinkedList
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
  end

  def insert_at_end(node)
    @last.nil? ? @last = node : @last.next_node = node
  end

  def insert_at_index(index, node)
    current_node = @first
    for i in (0..index)
      current_node = current_node.next_node

      if current_node.nil?
        puts "Invalid index to insert at."
        return nil
      end
    end

    node.next_node = current_node.next_node
    current_node.next_node = node
  end
end
