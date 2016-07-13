class LinkedList
  attr_accessor :head, :last

  def initialize(node = nil)
    @head = node
    @last = @head
  end

  def append(new_node)
    if empty?
      @head = new_node
      @last = @head
    else
      @last.next = new_node
      @last = new_node
    end
    self
  end

  def insert(new_node, index)
    if empty?
      index == 0 ? append(new_node) : (raise ArgumentError, "index incorrect")
    else
      crawler = 0
      current_node = @head

      while crawler < index - 1
        current_node = current_node.next
        crawler += 1
      end

      new_node.next = current_node.next
      current_node.next = new_node

      
      self
    end    
  end

  private

  def empty?
    @head == nil
  end
end
