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

  #Big O(n)
  def add_node_at(input, index)
    if index == @number_of_nodes
      add_node(input)
    end
    input_node = Node.new(input, nil)
    if index == 0
      input_node.next = @first
      @first = input_node
      @number_of_nodes += 1
    else
      previous_node = get_node_at(index - 1)
      next_node = get_node_at(index)
      previous_node.next = input_node
      input_node.next = next_node
      @number_of_nodes += 1
    end
  end

# Big O(n)
  def get_node_at(index)
    return nil if index + 1 > @number_of_nodes
    counter = 0
    current_node = @first
    until counter == index
      puts (current_node.value)
      current_node = current_node.next
      counter += 1
    end
    current_node
  end

  def get_value_at(index)
    get_node_at(index).value
  end

  def reverse
    counter = @number_of_nodes - 1
    temp = @first
    @first = @last
    @last = temp
    until counter <= 0
      get_node_at(counter).next = get_node_at(counter - 1) unless counter == 0
      get_node_at(counter).next = nil if counter == 0
      counter -= 1
    end
  end
end


ll = LinkedList.new

ll.add_node(1)
ll.add_node(2)
ll.add_node(3)

ll.reverse


puts ll.get_node_at(0)
puts ll.get_node_at(1)
puts ll.get_node_at(2)
