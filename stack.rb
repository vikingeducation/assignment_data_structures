class Stack

  def initialize
    @array = []
  end

  def push(obj)
    arr_length = @array.length
    @array[arr_length] = obj
  end

  def pop
    return nil if @array.empty?

    length = @array.length
    @array[length - 1] = nil
    peek
  end

  def peek
    last_obj = @array.length - 1
    return @array[last_obj]
  end

  private

  def empty?
    @array.length == 0
  end
end

stack = Stack.new
p stack.push(1)
p stack.push(2)
p stack.push(3)

p stack.pop
p stack.pop
p stack.pop
