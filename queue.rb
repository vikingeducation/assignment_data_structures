class Queue

  def initialize(array)
    @array = array
  end

  def peek
    @array[@array.length - 1]
  end

  def enqueue(value)
    counter = @array.length
    while counter >= 0
      if counter == 0
        @array[counter] = value
      else
        @array[counter] = @array[counter -1]
      end
      counter -= 1
    end
  end

  def dequeue
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