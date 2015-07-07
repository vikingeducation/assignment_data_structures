class Stack

  def initialize(stack = [])

    @stack = stack

  end

  def stack

    @stack

  end

  def push(item)

    @stack[self.size] = item

  end


  def pop

    temp = @stack[self.size - 1]

    @stack[self.size - 1] = nil

    temp

  end


  def peek

    @stack[self.size - 1]

  end

  def empty?

    @stack.length == 0

  end

  def size

    @stack.length

  end


end

# test = Stack.new(["h","e","l","l","o"])
# result = Stack.new


# test.size.times do
#   result.stack.push(test.stack.pop)
# end

# p result.stack


class Queue

  def initialize(queue = [])

    @queue = queue

  end

  def enqueue(item)

    @queue[self.size - 1] = item

  end


  def dequeue

    temp = @queue[0]

    @queue[0] = nil

    temp

  end


  def peek

    @queue[0]

  end

  def empty?

    @queue.length == 0

  end

  def size

    @queue.length

  end

end
