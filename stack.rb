class MyStack
	

	#sets up stack
	def initialize
   @values = []
   @size = 0
	end
  #returns last item
  def peek
    @values[@size - 1]
  end
  #pushes element into array and increases size variable
  def push(value)
    @values[@size] = value
    @size += 1
    value
  end
  #removes last element and sets last array index to nil
  def pop
    return nil if @size <= 0
    value = @values[@size - 1]
    @values[@size -1] = nil
    @size -= 1
    value
  end

  def size
    @size
  end

  def empty?
    @size == 0
  end

end

