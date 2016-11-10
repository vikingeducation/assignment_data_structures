require_relative 'stack'

class TempQueue < TempStack
  
  def enqueue(value)
    queue = [value]
    @array = queue + @array # fair game?
  end

  def dequeue
    pop
  end

end

