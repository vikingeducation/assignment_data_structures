Node = Struct.new(:data, :pointer)

class LinkedList

  attr_reader :node_list

  def initialize(node = nil)
    @first_node = node
    @current_node = @first_node
  end

  def node_list
    index = 0
    reset_current_node
    until end_of_list
      puts "Node #{index}: #{@current_node.data}"
      crawl
      index += 1
    end
    puts "Node #{index}: #{@current_node.data}"
  end

  def add(node, index = nil)
    reset_current_node
    unless index
      if @current_node == nil
        @current_node = node
        @first_node = node
      else
        until @current_node.pointer == nil
          crawl
        end
        @current_node.pointer = node
      end
    else
      crawl(index-1)
      # point new node to next node
      node.pointer = @current_node.pointer
      # point current node to new node   
      @current_node.pointer = node 
    end
  end

  private

    def end_of_list
      @current_node.pointer == nil
    end

    def reset_current_node
      @current_node = @first_node
    end

    def crawl(index = nil)
      if index
        reset_current_node
        index.times do 
          crawl
        end
      else
        @current_node = @current_node.pointer
      end
    end
end

l = LinkedList.new

l.add(Node.new("apple",nil))
l.add(Node.new("banana",nil))
l.add(Node.new("carrot",nil))
l.add(Node.new("bacon", nil), 1)
puts l.inspect
l.node_list