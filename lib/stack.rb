class Stack

  attr_reader :array

  def initialize
    @array = []
  end

  def empty?
    @array.length == 0
  end

  def push(value)
    return @array[0] = value if @array.empty?
    @array[@array.length] = value
  end

  def peek
    return nil if empty?
    @array[@array.length - 1]
  end

  def pop
    raise "stack is empty!" if empty?

    removed_value = @array[@array.length - 1]
    new_arr = []
    i = 0
    while i < @array.length - 1
      new_arr[i] = @array[i]
      i += 1
    end

    @array = new_arr
    removed_value
  end

end