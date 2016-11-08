Node = Struct.new(:data, :pointer)

class LinkedList

  attr_reader :node_list

  def initialize(node = nil)
    @first_node = node
    @current_node = node
    @final_node = node
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
    initialize(node) if @first_node == nil
    unless index
      @final_node.pointer = node
      @final_node = node
    else
      crawl(index - 1)
      # point new node to next node
      node.pointer = @current_node.pointer
      # point current node to new node
      @current_node.pointer = node
    end
  end

  def read(index)
    crawl(index)
    @current_node.data
  end

  def remove(index)
    crawl(index - 1)

    unless @current_node.pointer.pointer.nil? #last node
      @current_node.pointer = @current_node.pointer.pointer
      crawl
    end

    @current_node.pointer = nil
    @final_node = @current_node
  end

  def update(data, index)
    crawl(index)
    @current_node.data = data
  end

  def reverse
    # reset_current_node

    next_node = nil

    # first element only
    if @current_node == @first_node
      next_node = @current_node.pointer
      @current_node.pointer = nil
      @current_node = @final_node
    end

    begin
      prev_node = @current_node
      @current_node = next_node
      p @current_node
      next_node = @current_node.pointer
      @current_node.pointer = prev_node
    end while next_node.nil?

    @current_node = @first_node
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
l.update("carrot sticks", 3)

l.node_list

l.reverse

puts "reversed:"
l.node_list