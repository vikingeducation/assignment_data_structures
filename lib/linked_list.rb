require_relative "node"

class LinkedList
  attr_accessor :head, :previous, :tail
  def initialize(name_given = "bob")
    @head = nil
    @last = nil
    @name = name_given
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

  def get_definition

  end

  def length
    current_node = @head
    current_index = 0
    until @head == nil || current_node.pointer == nil 
      @previous = current_node
      current_node = current_node.pointer
      current_index += 1
    end
    current_index
  end

  # O(n) because we only iterate through each item once and change its pointer
  def reverse
    current_node = @head
    previous_previous = nil
    while current_node.pointer != nil
      @previous = current_node
      current_node = current_node.pointer
      @previous.pointer = previous_previous
      previous_previous = @previous
    end
    @previous = current_node
    current_node = current_node.pointer
    @previous.pointer = previous_previous
    previous_previous = @previous
    @head, @tail = @tail, @head
  end

end
