require 'pry'

class Stack
  attr_accessor :array

  def initialize(array)
    @array = array
  end

  def push(item)
    @array[@array.length] = item
    @array
  end

  def pop
    last = @array[@array.length-1]
    new_array = []
    index = 0
    while index < (@array.length - 1)
      new_array << @array[index]
      index += 1
    end
    @array = new_array
    last
  end

  def peek
    @array[@array.length-1]
  end

  def empty?
    @array.length == 0 ? true : false
  end

end


