Node = Struct.new(:value, :next)


class LinkedList
  def initialize
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
      @first = @last if @number_of_nodes == 2
      @last = input_node
    end
  end

  #set @first if num_of_nodes == 2
  def add_node_at(input, index)
    input_node = Node.new(input, nil)
    if index == 0
      input_node.next = @first
      @first = input_node
    else
      previous_node = get_node_at(index - 1)
      next_node = get_node_at(index)
      previous_node.next = input_node
      input_node.next = next_node
    end
  end

  def get_node_at(index)
    return nil if index + 1 > @number_of_nodes
    counter = 0
    current_node = @first
    until counter == index
      current_node = current_node.next
      counter += 1
    end
    current_node
  end

  def get_value_at(index)
    get_node_at(index).value
  end
end


