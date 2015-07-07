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

	def string_reverse(string)
		string.length.times do |i|
			push(string[(string.length - 1) - i])
		end
	end

	def empty?
		@stack_memory.length == 0
	end

	def memory
		@stack_memory
	end
end


class Queue

	def initialize
		@q_mem = []
	end

	def enqueue(element)
		old_memory = @q_mem
		@q_mem = Array.new(@q_mem.length + 1)
		@q_mem[0] = element
		@q_mem.length.times do |i|
			@q_mem[i+1] = old_memory[i] || break
		end
	end

	def dequeue
		old_memory = @q_mem
		@q_mem = Array.new(@q_mem.length - 1)
		@q_mem.length.times do |i|
			@q_mem[i] = old_memory[i]
		end
		old_memory[old_memory.length-1]
	end

	def peek
		@q_mem[@q_mem.length - 1]
	end

	def empty?
		@q_mem.length == 0
	end

	def q
		@q_mem
	end

end