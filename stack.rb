class Stack
	attr_accessor :stack

	def initialize(stack = [])
		@stack = stack
	end

	def pop
			

			popped = @stack[@stack.length-1]
			
      popped

      

	end
  

end


plates = Stack.new(stack = [1,2,3,4])

puts plates.pop.inspect

