Node = Struct.new(:word, :definition, :next)

class LinkedList

  attr_accessor :head, :last

	def initialize(head = nil)
		@head = head
		@last = head
	end

	def add_first_node(word, definition)
		@head = Node.new(word, definition, nil)
		@last = @head

	end

	def append(word, definition)
		if @head.nil?
			add_first_node(word, definition)

		else
			new_node = Node.new(word, definition)

			@last.next = new_node
			
			@last = new_node
		end

   end

   def find(index)
   	node = head
   	index.times { node = node.next}
   	node
   end

   def find_word(word)
   	node = head
   	steps = 0
   	until node.word == word || node == nil
      steps += 1
      puts "#{steps} steps so far"
      node.next
    end
   	return node
   end

   def size
   	return 0 if @head.nil?
   	count = 1
   	node = @head

   	until node == @tail
   		count += 1
   		node = node.next
   	end
   	count
   end

   
   	
  


end