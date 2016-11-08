class Stack

  #
  def self.my_push(arr, value)
    arr[arr.length] = value
    arr
  end

  def self.my_pop(arr)
    return "Array is empty" if Stack.my_empty?(arr)
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

  def self.peek(arr)
    return "Array is empty" if Stack.my_empty?(arr)
    arr[arr.length-1]
  end

  def self.my_empty?(arr)
    arr.length == 0
  end

  def self.my_reverse(string)
    counter = 0
    return_string = ""
    while counter < string.length
      return_string += Stack.my_pop(string)
      counter += 1
    end
    return_string
  end
end


p Stack.my_reverse("hello")
# p "My push is: #{Stack.my_push([1,2,3], 4)}"
# destroy = []
# p destroy
# p "My pop is: #{Stack.my_pop(destroy)}"
# p destroy
# p "This is our peek: #{Stack.peek(destroy)}"