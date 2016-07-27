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


	end


	def dequeue

		index = @queue.length

		unless empty?

			until @queue[ index - 1 ] != nil

				index -= 1

			end

			@queue[ index - 1 ] = nil

		end

	end





	def peek

		unless empty?

			return @queue[ @queue.length - 1 ]

		end


	end


	def empty?

		@queue.empty?

	end




end #/.queue


arr = Queue.new
arr.enqueue( "h" )
arr.enqueue( "e" )
arr.enqueue( "l" )
arr.enqueue( "l" )
arr.enqueue( "o" )

5.times do
	arr.dequeue
end

arr.peek