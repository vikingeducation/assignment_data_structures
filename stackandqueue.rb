class Stack
	attr_reader :stack_memory
	def initialize
		@stack_memory = []
	end

	def push(element)
		old_memory = @stack_memory
		@stack_memory = Array.new(@stack_memory.length + 1)
		@stack_memory.length.times do |i|
			@stack_memory[i] = old_memory[i] || element
		end
	end

	def pop
		old_memory = @stack_memory
		@stack_memory = Array.new(@stack_memory.length - 1)
		@stack_memory.length.times do |i|
			@stack_memory[i] = old_memory[i]
		end
		old_memory[old_memory.length-1]
	end

	def peek
		@stack_memory[@stack_memory.length-1]
	end

	def empty?
		
	end
end