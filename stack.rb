require 'pry'

class Stack

	def initialize( stack )

		@stack = stack
		@pop = nil


	end


	def push( item )

		@stack[ @stack.length ] = item

	end


	def pop

		@pop = @stack[ @stack.length - 1 ]

		return @pop

	end






	def peek


	end


	def empty?



	end




end #/.Stack


arr = Stack.new( [1,2,3,4,5,6,7] )
arr.push( 8 )
arr.pop