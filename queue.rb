class MyQueue

	def initialize
		@values = []
		@size = 0
	end

	def peek
		@values[0]
	end

	def enqueue(value)
		@values[@size] = value
		@size += 1
		value
	end

	def dequeue
		return nil if @size <= 0

		#remove the first in
		value = @values[0]
		@values[0] = nil

		#shuffle values down
		0.upto(@size - 2) do |i|
			@values[i] = @values[i + 1]
		end

		#snip off the end
		@values[@size -1] = nil
		@size -= 1

		value
	end

	def size
		@size
	end

	def empty?
		@size == 0
	end
	
end

