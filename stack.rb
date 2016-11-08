class TempStack

  attr_reader :array

  def initialize array=[]
    @array = array
  end

  def push(value)
    position = @array.length
    @array[position] = value
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
    @array.length.zero?
  end

end


