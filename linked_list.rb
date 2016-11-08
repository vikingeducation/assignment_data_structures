Node = Struct.new(:data, :next) # data = anything, # next = Node

class LinkedList

  attr_accessor :head, :tail

  def initialize(first_node = nil)
    @head =  first_node 
    @tail = first_node 
  end

  def add_first_node(data)
    @head = Node.new(data, nil)
    @tail = @head 
    puts "Added first node: #{data}"
  end

  def add_node(data)
    if @head.nil?
      add_first_node(data)
    else
      new_node = Node.new(data, nil)
      @tail.next = new_node
      @tail = new_node
      puts "Added a node: #{data}"
    end
  end

  def read_node(index)
    current = @head
    step = 0
    0.upto(index) do |i| 
      step += 1
      puts "At node #{i}, data is: #{current.data}"
      current = current.next
      break if current.nil?
    end
    step
    # Linear time O(n)
  end

  def find_node(index)
    current = @head
    index.times do |i|
      current = current.next
    end
    current
  end

  def insert_node(data, index)
    new_node = Node.new(data, nil)
    node_after = find_node(index)
    node_before = find_node(index-1)
    new_node.next = node_after
    node_before.next = new_node
  end

end

l = LinkedList.new
l.add_node("abc")
l.add_node("def")
l.add_node("ghi")
l.add_node("jkl")
puts "----------------------"
steps = l.read_node(1)
p "Steps: #{steps}"
puts "----------------------"
node = l.find_node(3)
p "Node: #{node}"
puts "----------------------"
l.insert_node("2",1)
l.read_node(4)



