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
      # point the last node to our new one
      @last.next = new_node
      # set our new node as the official last node
      @last = new_node
    end
    puts "Added node with value: #{data}"
  end

  # Remove the node at this position
  # (assume there is one there)
  # We'll crawl the list and save the prev
  def remove_node(index)
    # start at the head
    counter = 0
    current_node = @head
    prev_node = nil
    # crawl to the index position
    while counter < index
      prev_node = current_node
      current_node = current_node.next
      counter += 1
    end
    # now perform the removal (cutting out current_node)
    next_node = current_node.next
    current_node.next = nil       # clear the pointer
    prev_node.next = next_node

    puts "Removed node at index #{index} with value: #{current_node.data}"
  end

  # Return the node at that position, like in an array
  # (no error handling)
  def find_node(index)
    # start at the head
    counter = 0
    current_node = @head
    # crawl to the index position
    # outputs each node value for visibility
    while counter < index
      puts "Iterating node at #{counter}"
      current_node = current_node.next
      counter += 1
    end
    #puts "Found node at index #{index} with value: #{current_node.data}"
    current_node
  end

  def insert_node(index,data)
    
    node = Node.new(data,nil)

    if index == 0
      node.next = @head
      @head = node
    elsif index >= self.length
      add_node(data)
    else  
      current_node = find_node(index-1)
      next_node = current_node.next 
      current_node.next = node
      node.next = next_node
    end  
  end

  # Crawls and prints the list
  def print_list
    counter = 0
    current_node = @head
    loop do
      puts "Node at index #{counter}: #{current_node.data}"
      break if current_node.next.nil?
      current_node = current_node.next
      counter += 1
    end
  end

  def reverse
      first_node = @head
      middle_node = first_node.next
      last_node = middle_node.next
      first_node.next = nil
      puts "First #{first_node.data}, Sec #{middle_node.data}, Last #{last_node.data}"
      #reverse_list = LinkedList.new
      #reverse_list.last = @head 
      #reverse_list.head = @last

      while (middle_node != nil)
        
        x = middle_node.next
        middle_node.next = first_node
        
        first_node = middle_node
        middle_node = last_node
        last_node = x
       
      end
      @head,@last = @last,@head
      print_list
      self
  end
  

  def length
    counter = 0
    current_node = @head
    loop do
      break if current_node.next.nil?
      current_node = current_node.next
      counter += 1
    end
    counter+1
  end

end

L = LinkedList.new
L.add_node("hello")
L.add_node("there")
L.add_node("kelsey")
L.add_node("deepa")
puts  "#{L.print_list}"
L.find_node(2)
L.insert_node(0,"temp")
puts  "#{L.print_list}"
L.insert_node(4,"item at 4")
puts  "#{L.print_list}"
puts "Insert at position 6: #{L.insert_node(6,"item at 6")}"
puts  "#{L.print_list}"

puts "----------REVERSE---------"
puts "REVERSE LIST #{L.reverse}"
