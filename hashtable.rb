# Build a linked list node that contains the word and its definition (and anything else you need) using a Struct (not a class).
# Build a basic linked list class that allows you to:
	# Create the list
	# Read nodes at a particular index (add a printout which tracks the crawler's progress or at least returns the number of steps). In the comments, state the Big-O time of this operation.
	# Insert nodes at a particular index or, separately, at the end of the list (so store a reference to the last node). In the comments, state the Big-O time of this operation.

# Build a method #reverse on your LinkedList class that will entirely flip the order of this list, so the "head" and the "tail" are swapped and all the links point in opposite directions.
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

			@last = new_node

		end

		puts "Added node with value: #{word} and #{definition}"

	end

 # Big O is O(n) since the size of the linked list determines length to traverse the nodes
	def find_node( index )

		count = 0
		current_node = @head

		while count < index

			current_node = current_node.next
			count += 1

		end

		puts "Found node at index #{count}"
		puts "Word is #{current_node.word}"
		puts "Definition is #{current_node.definition}"

	end


end