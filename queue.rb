# Create a Queue data structure
class Queue
	def initialize(size = 5)
		@queue = []
		@size = size
	end

	public
	def enqueue(item)
		if !full?
			push_all_items
			@queue[0] = item
		else
			dequeue
			push_all_items
			@queue[0] = item
		end
	end

	def dequeue
		unless empty?
			index = get_queue_length - 1
			final = @queue[index]
			@queue.delete_at(index)
			puts "#{final} dequeued"
			final
		end
	end

	def peek(index)
		@queue[index]
	end

	def empty?
		@queue[0].nil? ? true : false
	end

	def full?
		get_queue_length == size? ? true : false
	end

	def size?
		@size
	end

	private
	def push_all_items
		unless empty?
			index = get_queue_length - 1
			while index >= 0
				@queue[index+1] = @queue[index]
				index -= 1
			end
		end
	end

	def get_queue_length
		count = 0
		@queue.each {count += 1}
		count
	end
end

# Load/unload a string in the same order
string = "Trevor".split('')
q = Queue.new(6)
string.each do |letter|
	q.enqueue(letter)
end

final = []
loop do
	if q.empty?
		break
	else
		final << q.dequeue
	end
end
puts final.join('')