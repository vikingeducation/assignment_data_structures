class Stack
  attr_reader :arr
  def initialize(arr)
    @arr = arr
  end
  #
  def push(value)
    arr[arr.length] = value
    arr
  end

  def pop
    return "Array is empty" if empty?
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

  def peek
    return "Array is empty" if empty?
    arr[arr.length-1]
  end

  def empty?
    arr.length == 0
  end

  def to_s
    @arr
  end
end


def reverse(string)
  counter = 0
  return_string = ""
  while counter < string.length
    return_string += string.Stack.pop
    counter += 1
  end
  return_string
end


stack = Stack.new([1,2,3])
s = Stack.new("Hello")

puts "My push is: #{stack.push(6)}"
puts "My pop is: #{stack.pop}"
puts "Stack after pop is: #{stack.to_s}"
puts "This is our peek: #{stack.peek}"
puts "Reverse is #{s.reverse}"
