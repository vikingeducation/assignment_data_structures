class Queue

	attr_accessor :queue

	def initialize(queue = [])
		@queue = queue
		
	end

	def dequeue
		#take first element from array
		popped = @queue[0]
    #sets up empty array
		new_array = []
    #starts counter at 1
		index = 1
		#iterates through array and 
		while index < (@queue.length)
			new_array[index] = @queue[index]
			index += 1
		end
		#returns dequeue element and updated array
		@queue = new_array
		popped
		puts @queue

	end
	
end

