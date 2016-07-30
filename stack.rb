require 'pry'

class Stack

	def initialize

		@stack = []

		# stores popped items
		@pop = []

	end


	def push( item )

		@stack[ @stack.length ] = item

	end


	def pop

		@pop[ @pop.length ] = @stack[ @stack.length - 1 ]

		@stack[ @stack.length - 1 ] = nil

		shrink_array

	end


	def shrink_array

		index = 0
		arr = []

		until index == @stack.length

			if @stack[ index ] != nil

				arr[ index ] = @stack[ index ]

			end

			index += 1

		end

		@stack = arr

	end



	def peek

		unless empty?

			puts @stack[ @stack.length - 1 ]

		end


	end


	def empty?

		@stack.empty?

	end


	def print

		puts @pop

	end



end #/.Stack

