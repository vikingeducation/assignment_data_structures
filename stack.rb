class Stack

  # This code as made from a C perspective. 
  # Restrictions
    # No negative indices
    # Length method allowed
    # Simple loops only (loop, while, times, for)
    # No Enumerable methods other advanced Ruby methods

  attr_reader :array

  def initialize(array=[])
    @array = array
  end

  def push(value)
    new_array = Array.new(@array.length+1)
    for i in 0..@array.length 
      new_array[i] = @array[i]
    end
    new_array[new_array.length-1] = value
    @array = new_array
  end

  def pop
    last_value = @array[@array.length-1]
    if @array.length != 1
      @array = @array[0..@array.length-2]
    else 
      @array = [] 
    end
    last_value
  end

  def peek(index)
    @array[index]
  end  

  def empty?
    @array.length == 0
  end

end


