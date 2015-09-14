# linkedlist

Node = Struct.new(:data, :next)

class LinkedList
  attr_accessor :head

  def initialize
    @head = Node.new(nil, nil)
    @head.next = nil
  end

  def add_node(data)
    current = @head
    while !current.data.nil? do
      current = current.next
    end
    current.data = data
    current.next = Node.new(nil, nil)
  end

  def read_node(index)
    current = @head
    while index != 0 do
      index -= 1
      current = current.next
    end

    current.data
  end

  # inserts node before the specified index in O(n) time
  def insert_node(index, data)
    current = @head

    if index == 0
      temp = @head
      @head = Node.new(data, temp)
      return
    end

    while index != 1 do
      index -= 1
      current = current.next
    end

    temp = current.next
    current.next = Node.new(data, temp) 
  end

  # in place reverse O(n)
  def reverse
    current = @head

    next_node = current.next
    while current.data != nil do
      prev_node = current
      current = next_node
      next_node = current.next

      if prev_node == @head
        prev_node.next = Node.new(nil, nil)
      end

      # reversing
      current.next = prev_node
    end

    @head = current.next
  end

  def print_list
    current = @head

    while current.data != nil do
      print "#{current.data} -> "
      current = current.next
    end

    print "nil \n"
  end

  def exist?(data)
    exist = false
    current = @head
    while !current.nil? do
      exist = true if data == current.data
      current = current.next
    end
  end

  def size
    count = 0
    current = @head
    while !current.data.nil? do
      count += 1
      current = current.next
    end

    count
  end
end

l = LinkedList.new
l.add_node(1)
l.add_node(2)
l.add_node(3)
l.print_list
l.insert_node(1,1.5)
l.insert_node(0,0.5)
l.insert_node(5,4)
l.print_list
l.reverse
l.print_list
print l.size