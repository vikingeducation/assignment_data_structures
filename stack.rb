class Stack

  #
  def self.my_push(arr, value)
    arr[arr.length] = value
    arr
  end

  def self.my_pop(arr)
    return_pop = arr[arr.length - 1]
    return_array = []
    counter = 0
    while counter < (arr.length - 1)
      # loop through old array and put all values into new array, front to back
      return_array[counter] = arr[counter]
      counter += 1
    end
    arr = return_array
    # puts arr
    return_pop
  end

  def peek()
  end

end



p "My push is: #{Stack.my_push([1,2,3], 4)}"
destroy = [3,4,5]
p destroy
p "My pop is: #{Stack.my_pop([3,4,5])}"
p destroy
