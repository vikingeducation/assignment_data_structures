#The Stack

class Stack

  def initialize(data =[])
    @data = data
    @cursor = data.length
  end

  def push(elt)
    @data[@cursor] = elt
    @cursor += 1
  end

  def pop
    if @cursor == 0
      puts "EmptyStack"
      return
    end
    @cursor -= 1
    ret_val = @data[@cursor]
    @data[@cursor] = nil
    ret_val
  end

  def peek
    @data[@cursor-1]

  end

  def empty?
    @cursor == 0 ? true: false
  end

end

#s = Stack.new
#s.push("sam")
#puts s.pop
#puts s.pop

reverse_string = Stack.new
str = "samantha"
for i in (0...str.length)
  reverse_string.push str[i]
end

new_string = ""
while !reverse_string.empty? do
  #puts reverse_string.pop
  new_string << reverse_string.pop
end
#puts new_string

#Queue
class Queue
  def initialize (data = [])
    @data = data
    @e_cursor = 0
    @d_cursor = 0
  end

  def dequeue
    # take off from the left
    if @d_cursor == @e_cursor
      puts "EmptyQueue"
      return
    end

    retval = @data[@d_cursor]
    @data[@d_cursor] = nil
    @d_cursor += 1
    retval
  end

  def enqueue( elt )
    # add to the right
    @data[@e_cursor] = elt
    @e_cursor += 1
  end

  def peek
    @data[@d_cursor]
  end

  def empty?
    @d_cursor == @e_cursor
  end

end


q = Queue.new    #  dc == 0, ec == 0
q.enqueue("sam")  #   dc == 0, ec == 1
q.enqueue("john")   #   dc == 0, ec == 2
#puts q.dequeue   #   dc == 1, ec == 2
#puts q.dequeue   #   dc == 2, ec == 2
#puts q.dequeue   #   bombs

same_order_string = "johnsamantha"
s_Queue = Queue.new
for i in (0...same_order_string.length)
  s_Queue.enqueue same_order_string[i]
end

new_string = ""
while !s_Queue.empty? do
  new_string << s_Queue.dequeue
end
#puts new_string

###########
#LinkedList

Node = Struct.new(:word, :definition, :next_node ) do 
  def display_node
    puts "word: #{word}"
    puts "def'n: #{definition}"
  end
end

class LinkedList
  attr_accessor :head
  
  def initialize(head)
    @head = head
  end

  def display_list
    current_node = @head
    counter = 0
    while current_node != nil
      current_node.display_node
      current_node = current_node.next_node
      puts "node number #{counter}"
      counter += 1
      puts
    end
  end

  def reverse_nodes()
    node_stack = Stack.new()
    current_node = self.head
    while current_node != nil
      node_stack.push(current_node)
      current_node = current_node.next_node
    end
    self.head = node_stack.pop if !node_stack.empty?
    current_node = self.head
    while !node_stack.empty?
      new_node = node_stack.pop
      current_node.next_node = new_node
      current_node = new_node
    end
    current_node.next_node = nil
  end

end

node1 = Node.new("go", "to move forward", nil )
node2 = Node.new("stop", "to not go forward", node1 )
node3 = Node.new("jump", "to rise up", node2 )

ll = LinkedList.new( node3 )

ll.display_list
#ll is linked list.
ll.reverse_nodes
ll.display_list



