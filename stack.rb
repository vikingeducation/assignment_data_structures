class Stack
	attr_accessor :stack

	#sets up stack
	def initialize(stack = [])

		@stack = stack
	end

	def pop
		  #outputs error message if array length is zero
			return "empty" if empty?
      
      #removes last element in array
			popped = @stack[@stack.length-1]
      
      #setup empty array and counter
      new_array = []
      index = 0
      
      #crawls through array and places each element into new array
      while index < (@stack.length - 1)

        new_array[index] = @stack[index]
        index += 1
      end

       #returns updated array and popped element
       @stack = new_array
       popped
  end

  def push(element)
  	#pushes element onto end of array
    @stack[@stack.length] = element

  end

  def peek
  	return "empty" if empty?

  	puts @stack[@stack.length-1]

  end

	def empty?
    #checks if array is empty
		@stack.length == 0

	end

end

