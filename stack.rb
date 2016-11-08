# arrays
# length method
# forward/positive indices
# loop, while, times, for
# do not use each, map
# do not use delete, at?, empty?

# stack:
  # pop
  # push
  # peek the start (can implement other elements)


class Stack < Array
  attr_reader :array

  def initialize(array)
    @array = array  
  end

  def pop
    # removes first element of stack
    # iterate from 1 to array.length

    popped_array = Array.new(@array.length - 1)

    index = 0

    while index < @array.length - 1
      popped_array[index] = @array[index]
      index += 1
    end
    @array = popped_array
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
end

s = Stack.new([1,2,3])
puts s.array
s.push(4)
puts s.array
puts s.peek
puts s.peek(2)