
Node = Struct.new( :word, :definition, :next )

class LinkedList

	attr_accessor :head, :last

	def initialize( first_node = nil )

		@head = first_node
		@last = first_node

	end

	def add_first_node( word, definition )

		@head = Node.new( data, definition, nil )
		@last = @head

	end



	def add_node( word, definition )

		if @head.nil?

			add_first_node( word, definition )

		else

			new_node = Node.new( word, definition )

			@last.next = new_node

			@last = new_node

		end

		puts "Added node with value: #{word}: #{definition}"

	end

 # Big O is O(n) since the size of the linked list determines length to traverse the nodes
	def find_node( index )


		count = 0
		current_node = @head

		while count < index


		raise "No node at index" if current_node.next.nil?

			print_node( current_node, count )

			current_node = current_node.next
			count += 1

		end

		puts "Found node at index #{count}"
		puts "Word is #{current_node.word}"
		puts "Definition is #{current_node.definition}"

	end


	def print_node( node, index )

		puts "Currently at index #{index}: #{node.word}"

	end

# what needs to pass in here to generate the list?
# created to be used in Hashtable for rendering list
	def print_list

		count = 0
		current_node = @head

		loop do

			print_node( current_node, count )

			return if current_node.next.nil?

			count += 1
			current_node = current_node.next

		end

	end

	# this is O(1) assuming we've already foung the node since we're only moving references
	def insert_node( word, definition, index )

		count = 0
		current_node = @head
		last_node = @head


		while count < index

			last_node = current_node
			current_node = current_node.next

			count += 1

		end

		if last_node.next == nil

			add_node( word, definition )

		else

			new_node = Node.new( word, definition )
			new_node.next = current_node
			last_node.next = new_node

			puts "Inserted #{new_node.word} at index: #{count}"

		end

	end


	def remove_node

		return nil if @head.nil?

		node = @head

		@head = @head.next

		return node

	end



	# O(n) - creates new nodes in this method - time will be linear
	def reverse

		return if @head.nil?

		temp = self.remove_node
		temp.next = nil
		@last = temp

		until @head.nil?

			node = self.remove_node
			node.next = temp
			temp = node

		end

		@head = temp

	end


end

=begin
list = LinkedList.new( Node.new( "Cat", "Something that meows", nil ))


list.add_node("Bear", "A bear")
list.add_node("Fish", "A swimmer")
list.add_node("Garden", "A grower")
list.add_node("Shirt", "A shirt")


list.insert_node( "Dragon", "fire breather", 4 )


list.find_node( 5 )

list.reverse

list.print_list
=end

