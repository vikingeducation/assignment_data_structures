Node = Struct.new(:data, :next)

class LinkedList

attr_accessor :head, :last

#create a list
	def initialize(first_node = nil)
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
			new_node = Node.new(data)  #why does Node struct not need a 2nd argument?
			@last.next = new_node
			@last = new_node
		end
	end
#read nodes at a particular index
	def read_node(index)
		count = 0
		current_node = @head
		while count < index
			current_node = current_node.next
			count += 1
		end
		current_node
	end

#reverse
	def reverse
		current = @head
		switch = []
		while current != nil
			switch << current
			current = current.next
		end

		len = switch.length
		@head = switch.pop
		current = @head
		(len-2).times do
			hold = switch.pop
			current.next = hold
			current = hold
		end
		@last = switch.pop
		current.next = @last
		@last.next = nil
	end

#insert nodes at a particular index
	def insert_node(value, index)
		new_node_to_insert = Node.new(value)
		count = 0
		current_node = @head
		previous_node = nil
		while count < index
			previous_node = current_node
			current_node = current_node.next
			count += 1
		end
		previous_node.next = new_node_to_insert
		new_node_to_insert.next = current_node
	end

	def length
		length = 0
		current_node = @head
		while current_node != @last
			current_node = current_node.next
			length += 1
		end
		length
	end

	def print
		self
	end

#insert nodes at the end of the list

end