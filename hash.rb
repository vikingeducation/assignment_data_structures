Node = Struct.new(:data, :next)

class LinkedList

  attr_accessor :head, :last

  def initialize(first_node=nil)
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
      new_node = Node.new(data)
      # point last node to the new one
      @last.next = new_node
      # new node is now last node
      @last = new_node
    end
    puts "added node with value: #{data}"
  end



  def read_node(index)
    counter = 0
    current_node = @head

    while counter < index
      current_node = current_node.next
      counter += 1
    end
    puts "found node at index #{index} with value #{current_node.data}"
    current_node
  end


  def insert_node(data, index)
    # {data|next=1} {data|next=2} {data|next=3}

  end



end