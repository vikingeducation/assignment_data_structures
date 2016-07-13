Node = Struct.new(:value, :next)

  

class LinkedList

  attr_reader :moves

  def initialize
    @last = nil
    @first = nil
    @number_of_nodes = 0
    @current_node = @first
    @moves = 1
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
      current_node = current_node.next
      counter += 1
    end
    current_node
  end

  def find_value(value)
    @moves = 1
    counter = 0
    current_node = @first
    until counter == @number_of_nodes
      return current_node if current_node.value == value
      current_node = current_node.next
      counter += 1
      @moves += 1
    end
    nil
  end

  def get_value_at(index)
    get_node_at(index).value
  end

  # This implementation is in O(n^2) time
  def reverse
    counter = @number_of_nodes - 1
    until counter <= 0
      get_node_at(counter).next = get_node_at(counter - 1) unless counter == 0
      get_node_at(counter).next = nil if counter == 0
      counter -= 1
    end
    temp = @first
    @first = @last
    @last = temp
  end

  # def reverse
  #   next_node = @first.next
  #   previous_node
  #   until next_node.nil?
  #     @first.next = previous_node

  #   end

  # end

  def full_list
    return_array = []
    @number_of_nodes.times do |index|
      return_array << get_value_at(index)
    end
    return_array
  end


  def current_node_value
    @current_node.value
  end

  def next
    puts "Can't go any further, next node value is nil" if @current_node.next.value.nil?
    unless @current_node.value.nil?
      @previous_node = @current_node
      @current_node = @current_node.next
    end
  end
end


ll = LinkedList.new

ll.add_node(1)
ll.add_node(2)
ll.add_node(3)

ll.reverse


puts ll.get_value_at(0)
puts ll.get_value_at(1)
puts ll.get_value_at(2)
