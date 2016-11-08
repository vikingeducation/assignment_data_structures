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

  def pop
    # removes first element of stack
    # iterate from 1 to array.length

    popped_array = Array.new(length - 1)

    (self.length - 1).times do |index|
      popped_array[index] = self[index + 1]

    end
  end

  def push(elem)

  end

end