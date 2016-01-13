Node = Struct.new(:data, :next)

class LinkedList

  attr_accessor :head, :last

  def initialize(first_node=nil)
    @head = first_node
    @last = first_node
    @length = first_node.nil? ? 0 : 1
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
    @length += 1
    # puts "added node with value: #{data}"
  end


  # Big O(n) because the worst case would be to traverse through entire list of nodes.
  def read_node(index)
    counter = 0
    current_node = @head

    while counter < index
      puts "Found node at index #{counter} with value #{current_node.data}"
      current_node = current_node.next
      counter += 1
    end
    current_node
  end

  # Big O(n) because you might be inserting at the end, have to traverse the whole list to get there
  def insert_node(data, index)
    counter = 0
    current_node = @head
    new_node = Node.new(data)
    prev_node = nil

    while counter < index
      prev_node = current_node
      current_node = current_node.next
      counter += 1
    end

    prev_node.next = new_node
    new_node.next = current_node

  end

  def reverse
    #              item a        item b       item c
    # original {data|next=b} {data|next=c} {data|next=nil}
    # reverse {data|next=nil} {data|next=a} {data|next=b}

    idx = @length - 1
    until idx == 0
      node = @arr.pop
      add_node(node.data)
      idx -= 1
    end


  end

  def stack

    idx = 0
    @arr = []

    current_node = @head

    while idx < @length

      @arr << current_node
      current_node = current_node.next

      idx +=1
    end
    @arr
  end

end



l1 = LinkedList.new(Node.new("First node!", nil))
l1.add_node("Second node!")
l1.add_node("Third node!")
l1.add_node("Fourth node!")
l1.add_node("Fifth node!")  # 4
l1.add_node("Sixth node!")  # 5
# l1.read_node(5)
# l1.read_node(1)
# l1.insert_node("I was inserted", 2)
# l1.read_node(5)
l1.stack
l1.reverse
l1.read_node(12)


# notes: 
#     current = @head
#     # puts "debug is here"
#     # puts "#{@head.data}"
#     # puts "#{@head.next}"
    
#     next_node = current.next

#     until current.next.nil? do
#       prev_node = current
#       current = next_node
#       puts "debug is here"
#       puts "#{next_node.next}"
#       next_node = current.next

#       if prev_node == @head
#         prev_node.next = nil
#       end
#       current.next = prev_node
#     end

#     # switch head to point to nil, be the end of the list
#     @head = current.next  # same as nil
#   end