Node = Struct.new(:word, :definition, :next, :prev)

class LinkedList

	attr_accessor :head, :last

  	def add_node(word, definition)
    	if @head.nil?
      		@head = Node.new(word, definition, nil, nil)
    		@last = @head
    	else
      		new_node = Node.new(word, definition, nil)
      		@last.next = new_node
      		new_node.prev = @last
      		@last = new_node
    	end
  	end

  	# It's O(n) as we're traversing through the entire list

  	def insert_node_at(index, word, definition)
    	counter = 0
    	current_node = @head
		new_node = Node.new(word, definition)
    	while counter < index
    		p "Traversing list, now at index #{counter}"
    		prev_node = current_node
      		current_node = current_node.next
      		counter += 1
    	end
    	new_node.prev = prev_node
    	new_node.next = current_node
    	current_node.prev = new_node
    	prev_node.next = new_node
  	end

  	# It's O(n) as we're traversing through the entire list
 
  	def find_node(index)
    	counter = 0
    	current_node = @head

    	while counter < index
    		#p "Traversing list, now at index #{counter}"
      		current_node = current_node.next
      		counter += 1
    	end

    	#puts "Found node at index #{index} with definition: #{current_node.definition}"
    	current_node
  	end

  	def print_list
    	counter = 0
    	current_node = @head
    	loop do
    		puts "    #{counter}: #{current_node.word} means #{current_node.definition}"
      		break if current_node.next.nil?
      		current_node = current_node.next
      		counter += 1
    	end
  	end

  	# it's O(n) we have to traverse 2 times and use next and prev pointers, we had to created 2 new nodes for 

  	def reverse
		current_node = @head
		while current_node.next != nil
			x = current_node.next
			current_node.prev = x
			current_node = current_node.next
		end
		@last.next = @last.prev
		@last.prev = nil
		current_node = @head
		while current_node.prev != nil
			x = current_node.prev
			x.next = current_node
			current_node = current_node.prev
		end
		@head.next = nil

		# Swap head and tail

		new_head = Node.new(@last.word, @last.definition, @last.next, @last.prev)
		new_last = Node.new(@head.word, @head.definition, @head.next, @head.prev)
		@head = new_head
		@last = new_last
  	end
end

# l2 = LinkedList.new
# l2.add_node("Cat", "An animal which is crazy")
# l2.add_node("Dog", "An animal which is kind")
# l2.add_node("Apple", "A round fruit which might be red, green or yellow")
# l2.add_node("Mouse", "An animal which gets eaten by cat")
# l2.add_node("Car", "A 4 wheel thing that we drive")
# l2.add_node("House", "A place to stay")
# l2.add_node("Phone", "A thing we use to call someone")
# l2.add_node("Pen", "A thing we use to write on paper")
# #l2.print_list
# #l2.insert_node_at(4, "Foot", "Part of body which helps walking")
# #l2.print_list
# puts "Before reverse :"
# l2.print_list
# l2.reverse
# puts "After reverse :"
# l2.print_list