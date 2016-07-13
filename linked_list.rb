require 'pry'

Node = Struct.new :data, :next


class LinkedList

  attr_reader :head, :last

  def initialize(first=nil)
    @head = first
    @last = first
  end
#  constant time
  def add_first_node(data)
    @head = Node.new(data, nil)
    @last = @head
  end

# N time
  def read_node(index)
    holder = @head
    steps = 0
    return @head.data if index == 0
    index.times do
      holder = holder.next
      steps += 1
    end
    p "#{holder.data} in #{steps} steps"
  end

  def contents
    result = []
    holder = @head
    until holder.next.nil?
      result << holder.data
      holder = holder.next
    end
    result
  end

# constant time
  def add_node(data)
    if @head.nil?
      add_first_node(data)
    else
      @last.next = Node.new(data, nil)
      @last = @last.next
    end
  end

# N time
  def insert_node(data, index)
    # Big O - constant time, independent of number of nodes
    holder = @head
    (index - 1).times do
      holder = holder.next
    end
    holder = Node.new(data, holder)
  end

# N squared time
  def reverse
    last_holder = @last
    until @head.next.nil?
      holder = @head

      # find item before the one that needs to be reset
      until holder.next == last_holder do
          holder = holder.next
      end
      # set item that needs to be reset to point to the item before it
        last_holder.next = holder
        # set item before the reset-item to point to nil, breaks chain
        holder.next = nil
        # sets last holder to be the new end
        last_holder = holder
    end
    @last, @head = @head, @last

  end
end

# list = LinkedList.new
# list.add_node('a')
# list.add_node('b')
# list.add_node('c')
# list.read_node(2)
# list.reverse
# list.read_node(2)
# list.read_node(1)
