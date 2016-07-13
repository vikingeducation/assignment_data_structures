Node = Struct.new(:data, :next)

class LinkedList
  attr_accessor :head, :last

  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end

  def add_first_node(data)
    @head = Node.new(data, nil)
    @last = @head
  end

  def add_node(data)
    if @head.nil?
      add_first_node(data)
    else
      new_node = Node.new(data, nil)
      @last.next = new_node
      @last = new_node
    end
  end

  def value(index)
    current_node = @head
    index.times do
      current_node = current_node.next
    end
    current_node.data
  end

end
