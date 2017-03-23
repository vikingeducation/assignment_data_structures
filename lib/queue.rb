class Queue

  attr_reader :array
  
  def initialize 
    @array = []
  end

  def empty? 
    @array.length == 0
  end

  def enqueue(value)
    return @array[0] = value if @array.length == 0
   @array[@array.length] = value
  end

  def dequeue
    raise "queue is empty!" if empty?

    removed_value = @array[0]
    new_arr = []
    i = 0
    while i + 1 < @array.length
      new_arr[i] = @array[i + 1]
      i += 1
    end
    @array = new_arr
    removed_value
  end

  def peek
    return nil if empty?
    @array[0]
  end

end