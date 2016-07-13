
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

  def insert(new_node, index=0)
    if empty?
      append(new_node)
    else
      current_node = @head
      previous_node = nil

      index.times do
        previous_node = current_node
        current_node = current_node.next
      end

      previous_node.next = new_node if previous_node
      new_node.next = current_node  
    end   
    self
  end

  def read(index = 0)
    current_node = @head

    index.times do
      current_node = current_node.next
    end
    current_node
  end


  private

  def empty?
    @head == nil
  end
end
