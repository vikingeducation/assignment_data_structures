Node = Struct.new(:data, :pointer)

class LinkedList

  attr_reader :node_list

  def initialize(node = nil)
    @first_node = node
    @current_node = @first_node
  end

  def node_list
    index = 0
    until end_of_list
      puts "Node #{index}: #{@current_node.data}"
      crawl
      index += 1
    end
    puts "Node #{index}: #{@current_node.data}"
  end

  def end_of_list
    @current_node.pointer == nil
  end

  def reset_current_node
    @current_node = @first_node
  end

  def crawl
    @current_node = @current_node.pointer
  end

  def add(node)
    reset_current_node
    if @current_node == nil
      @current_node = node
    else
      until @current_node.pointer == nil
        crawl
      end
      @current_node.pointer = node
    end
  end

  def read(index)

  end
end

l = LinkedList.new

l.add(Node.new("apple",nil))
l.add(Node.new("banana",nil))
l.add(Node.new("carrot",nil))

l.node_list