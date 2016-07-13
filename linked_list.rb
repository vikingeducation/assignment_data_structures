
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

    while ( i < index)
      puts "the node is: #{@current_node.data}"
      current_node = current_node.next
      i += 1 
    end

    current_node.data
  end





end