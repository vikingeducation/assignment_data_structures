class Queue

	def initialize
		@values = []
	end

	def enqueue(thing)
		index_to_push = @values.length
		@values[index_to_push] = thing
		@values
	end

	def dequeue
		cur_size = @values.length
		thing = @values[0]
		temp_array = []
		(cur_size - 1).times do |index|
			temp_array[index] = @values[index+1]
		end
		@values = temp_array
		thing
	end

	def peek
		@values[0]
	end

	def empty?
		@values.length == 0
	end
end

my_q = Queue.new

my_string = "behdad"
my_string.length.times do |index|
	my_q.enqueue(my_string[index])
end
reversed_string = ''
my_string.length.times do
	reversed_string = reversed_string + my_q.dequeue
end
p reversed_string