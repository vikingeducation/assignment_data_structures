require 'pry'

class Queue

	def initialize

		@queue = []

		@dequeue = []


	end


	def enqueue( item )

		index = @queue.length

		# move the elements up one index to open up index 0
		until index == 0

			@queue[ index ] = @queue[ index - 1 ]

			index -= 1

		end

		# place element at index 0
		@queue[ index ] = item

binding.pry
	end


	def dequeue

		@dequeue[ @dequeue.length ] = @queue[ @queue.length - 1 ]

		@queue[ @queue.length - 1 ] = nil

		shrink_queue

	end


	def shrink_queue

		index = 0
		arr = []

		until index == @queue.length

			if @queue[ index ] != nil

				arr[ index ] = @queue[ index ]

			end

			index += 1

		end

		@queue = arr

	end



	def peek

		unless empty?

			puts @queue[ @queue.length - 1 ]

		end


	end


	def empty?

		@queue.empty?

	end


	def print

		puts @dequeue

	end


end #/.queue


arr = Queue.new
arr.enqueue( "h" )
arr.enqueue( "e" )
arr.enqueue( "l" )

arr.peek

arr.enqueue( "l" )
arr.enqueue( "o" )

5.times do
	arr.dequeue
end

arr.print
