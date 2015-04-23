# Create a Stack class without implimenting pop, first, [-1], or last methods

class Stack
	def initialize
		@stack = []
	end

	public

	def pop
		return nil if @stack.empty?
		stack_length = get_stack_length
		final = @stack[stack_length-1]
		@stack.delete_at(stack_length-1)
		final
	end

	def push(item)
		@stack << item
	end

	def peek(index)
		@stack[index]
	end

	def empty?
		peek(0).nil? ? true : false
	end

	def size
		get_stack_length
	end

	private
	# Helper methods
	def get_stack_length
		count = 0
		@stack.each {count += 1}
		count
	end
end

# Code to reverse a string
s = Stack.new
string = "Hello"
puts string
string = string.split('')
string.each do |letter|
	s.push(letter)
end
puts "All letters pushed to stack. Reversing..."
final = []
loop do
	letter = s.pop
	unless letter.nil?
		final << letter
	else
		break
	end	
end
puts final.join('')