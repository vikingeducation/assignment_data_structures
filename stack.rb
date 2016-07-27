require 'pry'

class Stack

	def initialize

		@stack = []

		@pop = []


	end


	def push( item )

		@stack[ @stack.length - 1 ] = item

	end


	def pop

		unless empty?

			@pop = @stack[ @stack.length - 1 ]

		end

	end





	def peek

		unless empty?

			return @stack[ @stack.length - 1 ]

		end


	end


	def empty?

		@stack.empty?

	end




end #/.Stack


arr = Stack.new
arr.push( "h" )
arr.push( "e" )
arr.push( "l" )
arr.push( "l" )
arr.push( "o" )

5.times do
	arr.pop
end

arr.peek