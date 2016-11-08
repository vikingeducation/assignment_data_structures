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
    0.upto(index-1) do |i|
      current = current.next
    end
    current
    # Linear time O(n)
  end

  def insert_node(data, index)
    new_node = Node.new(data, nil)    
    node_before = find_node(index-1)
    node_after = node_before.next
    new_node.next = node_after
    node_before.next = new_node
    # ideally constant time o(1), 
    # in actuality o(n) because traversal is required to read
  end

  def append_node(data) 
    if @head.nil?
      add_first_node(data)
    else
      new_node = Node.new(data, nil)
      @tail.next = new_node
      @tail = new_node
    end
    #o(1) constant time
  end

  def reverse # 1   3 -> 4
    previous = @head # 1
    current = @head.next # 3
    puts "----------------------"
    loop do
      following = current.next 
      puts following
      current.next = previous 
      puts current
      break if following.nil?
      previous = current 
      current = following 
    end
    @head.next = nil
    puts "----------------------"
  end

end

# l = LinkedList.new
# l.add_node("1")
# l.add_node("3")
# l.add_node("4")
# puts "----------------------"
# l.read_node(2)
# # l.add_node("5")
# puts "----------------------"
# # steps = l.read_node(3)
# # p "Steps: #{steps}"
# # puts "----------------------"
# # node = l.find_node(3)
# # p "Node: #{node}"
# # puts "----------------------"
# # l.insert_node("2",1)
# # l.read_node(4)
# # puts "----------------------"
# # l.append_node('6')
# # l.read_node(6)
# # puts "----------------------"
# l.reverse
# l.read_node(6)
# puts "----------------------"

