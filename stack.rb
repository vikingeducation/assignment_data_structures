# arrays
# length method
# forward/positive indices
# loop, while, times, for
# do not use each, map
# do not use delete, at?, empty?
# add an empty? helper
# verify you can reverse a string

# stack:
  # pop
  # push
  # peek the start (can implement other elements)


class Stack
  attr_reader :array

  def initialize(array)
    @array = array
  end

  def pop
    # removes first element of stack
    # iterate from 1 to array.length

    popped_array = Array.new(@array.length - 1)

    index = 0
    popped_element = @array[-1]

    while index < @array.length - 1
      popped_array[index] = @array[index]
      index += 1
    end

    @array = popped_array

    popped_element
  end

  def push(elem)
    # add elem to array
    pushed_array = Array.new(@array.length + 1)

    (@array.length).times do |index|
      pushed_array[index] = @array[index]
    end
    pushed_array[pushed_array.length - 1] = elem
    @array = pushed_array
  end

  def peek(index = 0)
    @array[index]
  end

  def empty?
    @array.length == 0
  end

end

def reverse(string)
  # string = "hello"

  # iterate from end of string
  #   s.push(from end of string)
  #   [o]
  #   s.push()
  #   [o, l]

  char = string.length - 1
  reversed_array = Stack.new([])

  while char >= 0
    reversed_array.push(string[char])
    char -= 1
  end

  reversed_array.array.join("")
end

# s = Stack.new([1,2,3])
# puts s.array
# s.push(4)
# puts s.array
# puts s.peek
# puts s.peek(2)

puts reverse("hello")