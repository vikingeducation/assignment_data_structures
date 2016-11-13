class Queue 

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

  def enqueue(value)
    new_array = Array.new(@array.length+1)
    for i in 0..@array.length-1 
      new_array[i+1] = @array[i]
    end
    new_array[0] = value
    @array = new_array    
  end

  def dequeue
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

