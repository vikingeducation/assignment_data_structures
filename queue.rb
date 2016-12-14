require 'pry'

class Queue

  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def enqueue(item)
    @array[@array.length] = item
    @array
  end

  def dequeue
    last = @array[0]
    new_array = []
    index = 1
    while index < @array.length
      new_array << @array[index]
      index += 1
    end
    @array = new_array
    return last
  end

  def empty?
    @array.length == 0 ? true : false
  end

  def peek
    @array[0]
  end

end



