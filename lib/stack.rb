
# Stack class which implements methods to push, pop, and peek at the top item.
# Add an empty? helper.
# Verify that you can reverse a string with your stack:
class Stack
  attr_accessor :arr

  def initialize(arr)
    @arr = arr
  end



  def push(elem)
    if empty?
      @arr << elem
    else
      @arr[@arr.length] = elem
    end
    @arr
  end



  def pop

    if empty?
      nil
    else
      len = @arr.length

      last_item = @arr[len-1]
      new_arr = Array.new
      
      counter = 0
      while counter < len-1
        new_arr << arr[counter]
        counter += 1
      end
      @arr = new_arr
      last_item
    end
  end


  def peek(index = 0)
    @arr[index]
  end


  def empty?
    @arr.length == 0 
  end
end