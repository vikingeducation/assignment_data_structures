Node = Struct.new(:word, :definition, :next)

class LinkedList

  attr_accessor :head, :last

	def initialize(first_node = nil)
		@head = first_node
		@last = first_node
	end

	def add_first_node(word, definition)
		@head = Node.new(word, definition, nil)
		@last = @head

	end

	def add_node(word, definition)
		if @head.nil?
			add_first_node(word, definition)

		else
			new_node = Node.new(word, definition)

			@last.next = new_node
			
			@last = new_node
		end

   end

   def find_node(index)
   	counter = 0
   	current_node = @head
   	while counter < index
   		current_node = current_node.next
   		puts "#Index: {inxex} word: #{current_node.word} definition: #{current_node.definition}"

   	end

   	
   end


end