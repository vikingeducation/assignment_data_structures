class Queue
	def initialize
		@length = 0
		@queue = Array.new(@length)
	end

	def enqueue(value)
		@length += 1
		a = Array.new(@length)
		a[0] = value
		i = 0
		while (i < @length - 1)
			a[i + 1] = @queue[i]
			i += 1
		end
		@queue = a
		value
	end

	def dequeue
		@length -= 1
		value = @queue[@length]
		a = Array.new(@length)
		i = 0
		while (i < @length)
			a[i] = @queue[i]
			i += 1
		end
		@queue = a
		value
	end

	def peek
		[back, front]
	end

	def front
		@queue[@length - 1] unless empty?
	end

	def back
		@queue[0] unless empty?
	end

	def empty?
		@length == 0
	end
end