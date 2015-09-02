class Stack
	def initialize
		@length = 0
		@stack = Array.new(@length)
	end

	def push(value)
		@length += 1
		a = Array.new(@length)
		i = 0
		while (i < @length - 1)
			a[i] = @stack[i]
			i += 1
		end
		a[@length - 1] = value
		@stack = a
		value
	end

	def pop
		unless empty?
			@length -= 1
			a = Array.new(@length)
			i = 0
			while (i < @length)
				a[i] = @stack[i]
				i += 1
			end
			value = @stack[@length]
			@stack = a
			value
		end
	end

	def peek
		@stack[@length - 1] unless empty?
	end

	def empty?
		@length == 0
	end
end