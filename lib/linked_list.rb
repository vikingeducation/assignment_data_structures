require_relative "node"

class LinkedList
  attr_accessor :head, :previous, :tail
  def initalize()
    @head = nil
    @last = nil
  end

  def add_node(node)
    @tail.pointer = node
    node.pointer = nil
    @tail = node
    @head = @tail if @head == nil
  end

  def add_node_with_index(node, index)
    next_node = crawl(index)
    @previous.pointer = node
    node.pointer = next_node
  end

  def access(index)
    crawl(index).word, crawl(index).def
  end

  def crawl(desired_index)
    current_node = @head
    current_index = 0
    until current_index == desired_index
      @previous = current_node
      current_node = current_node.pointer
      current_index += 1
    end
    current_node
  end
end

#Its going to have a head node
#it can add a node.
##it can add the node at the begining (default)
##it can add the node at a specified point
#it can delete values
##it crawls to the value and removes it, fixing references
#it will have a method reverse to reverse the list.
#make big O notes
#has a last node

#add node
#start at head
#crawl
