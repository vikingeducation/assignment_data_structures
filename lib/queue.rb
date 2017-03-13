# Class which implements the methods enqueue, dequeue and peek.
# Add methods for empty?
# Verify that you can load and unload a string in the same order with your queue.
class Queue
  attr_accessor :arr

  def initialize(arr)
    @arr = arr
  end

  def enqueue(elem)

    len = @arr.length

    new_arr = Array.new(len+1)
    
    counter = 0
    while counter < len
      new_arr[counter] = arr[counter]
      counter += 1
    end
    new_arr[len] = elem

  end

  def dequeue
    len = @arr.length

    new_arr = Array.new(len-1)
    
    item = @arr[0]
    counter = 1
    while counter < len-1
      new_arr[counter-1] = arr[counter]
      counter += 1
    end
    item
  end

  def peek(index = 0)
    @arr[index]
  end

  def empty?
    @arr.length == 0 
  end


end