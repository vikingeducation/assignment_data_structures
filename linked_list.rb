
Node = Struct.new(:data, :next)


class LinkedList 

  attr_accessor :head, :last

  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end

  #O(n)
  def read_node_at_index(index)
    #printout the progress of nodes
    i = 0
    current_node = @head

    while i < index
      puts "the node is: #{@current_node.data}"
      current_node = current_node.next
      i += 1 
    end

    current_node.data
  end

  def insert_node_at_index(new_node, index)
    i = 0
    current_node = @head
    while i < index - 1
      current_node = current_node.next
      i += 1
    end
    previous_node = current_node
    current_node = previous_node.next
    
    previous_node.next = new_node
    new_node.next = current_node
    
  end

  def reverse
    i = 0
    previous_node = nil
    current_node = @head
    loop do
      
      previous_node = current_node
      current_node = current_node.next
      

    end until current_node.next == nil

  end





end