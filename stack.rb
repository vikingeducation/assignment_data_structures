class MyStack

  attr_reader :stack, :length

  def initialize
    @stack = []
    @length = 0
  end

  def push(item)
    @stack[@length] = item
    @length += 1
    @stack
  end

  def pop
    if @length == 0
      puts "Array is empty"
    else
      popped = @stack[@length-1]
      @stack[@length-1] = nil
      @length -= 1
      popped
    end
  end

  def peek
    @stack[@length-1]
  end

end
