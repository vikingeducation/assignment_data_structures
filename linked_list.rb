class LinkedList

  def initialize
    Node = Structure.new(:value, :next)
    @last = nil
    @first = nil
    @number_of_nodes = 0
  end

  def add_node(input)
    input_node = Node.new(input, nil)
    @number_of_nodes += 1
    if @last == nil
      @last = input_node
      @first = input_node
    else
      @last.next = input_node
      @last = input_node
    end
  end

  def add_node_at(input, index)
    input_node = Node.new(input, nil)
    previous_node = get_node_at(index -1)
    next_node = get_node_at(index)
    previous_node.next = input_node
    input_node.next = next_node
  end

  def  get_node_at(index)


  end


end
