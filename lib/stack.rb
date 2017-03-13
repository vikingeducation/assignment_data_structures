
# Stack class which implements methods to push, pop, and peek at the top item.
# Add an empty? helper.
# Verify that you can reverse a string with your stack:
class Stack
  attr_accessor :arr

  def initialize(arr)
    @arr = arr
  end

  def push(elem)

    len = @arr.length

    new_arr = Array.new(len+1)
    
    counter = 0
    while counter < len
      new_arr[counter] = arr[counter]
      counter += 1
    end
    new_arr[len] = elem

  end

  def pop
    len = @arr.length

    new_arr = Array.new(len-1)
    
    counter = 0
    while counter < len-1
      new_arr[counter] = arr[counter]
      counter += 1
    end
    @arr[len-1]
  end

  def peek(index = 0)
    @arr[index]
  end

  def empty?
    @arr.length == 0 
  end


end