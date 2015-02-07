Node = Struct.new(:data, :next)

class LinkedList
  attr_accessor :head, :last, :node_count

  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
    @node_count = 0
  end

  def add_first_node(data)
    @head = Node.new(data, nil)
    @last = @head
  end

  def add_node(data)
    if @head.nil?
      add_first_node(data)
    else
      new_node = Node.new(data)
      @last.next = new_node
      @last = new_node
    end
    puts "Added node with value: #{data}"
  end

  def remove_node(index)

    counter = 0
    current_node = @head
    prev_node = nil

    while counter < index
      prev_node = current_node
      current_node = current_node.next
      counter += 1
    end

    prev_node.next = current_node.next

    puts "Removed node at index #{index} with value: #{current_node.data}"
  end

  def find_value(value)
    counter = 0
    @node_count = 0
    current_node = @head

    while counter < index
      current_node = current_node.next
      counter += 1
      if current_node.data == value
        puts "Found #{value}"
        return true
      end
      @node_count += 1
    end
    return false
  end

  def find_node(index)

    counter = 0
    current_node = @head

    while counter < index
      current_node = current_node.next
      counter += 1
    end

    puts "Found node at index #{index} with value: #{current_node.data}"
    current_node
  end

  def print_list
    counter = 0
    current_node = @head
    loop do
      
      print "Word: #{current_node.data} ;   "
      current_node = current_node.next
      
      if current_node == nil
        puts "Definition not found"
      else
        puts "Definition: #{current_node.data}"
      end

      break if current_node.next.nil?
      current_node = current_node.next
    end
  end

end