class Stack

  def initialize(array)
    @array = array
  end

  def peek
    @array[@array.length - 1]
  end

  def push(value)
    @array[@array.length] = value
  end

  def pop
    return_value = peek
    if @array.length == 1
      @array = []
    else
      @array = @array[0..@array.length - 2]
    end
    return_value
  end

  def empty?
    !peek
  end

end