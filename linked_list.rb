Node = Struct.new :data, :next


class LinkedList

  attr_reader :head, :last

  def initialize(first=nil)
    @head = first
    @last = first
  end

  def add_first_node(data)
    @head = Node.new(data, nil)
    @last = @head
  end


  def read_node(index)
  end

  def add_node(data)
    if @head.nil?
      add_first_node(data)
    else
      @last.next = Node.new(data, nil)
      @last = @last.next
    end
  end

  def insert_node(data, index)
    # Big O - constant time, independent of number of nodes
    holder = @head
    (index - 1).times do
      holder = holder.next
    end
    holder = Node.new(data, holder)
  end


  def reverse
    
    holder = @head
    until @head.next.nil?
      until holder.next == @last do
          holder = holder.next
      end
        @last.next = holder
        holder.next = nil
    end
    @last, @head = @head, @last
    
  end
end

list = LinkedList.new
list.add_node('a')
list.add_node('b')
list.add_node('c')
p list.reverse



[Finished in 0.4s]

