require_relative "node"

class LinkedList
  attr_accessor :head, :previous, :tail
  def initalize()
    @head = nil
    @last = nil
  end

  def add_node(node)
    @tail.pointer = node if @head
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
    return crawl(index).word, crawl(index).def
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

  def reverse
    #reverses linked list 
    current_node = @head
    while current_node.pointer != nil
      @previous = current_node
      current_node = current_node.pointer
    end
    @previous.pointer
  end
end

A B C D

A ==> B ==> C ==> D

A, B
A = nil


