class Queue
  def initialize
    @queur = []
  end

  def peek
    @array[@array.length - 1]
  end

  def enqueue(item)
    @queue[@queue.length] = item
    self
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
