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

    temp = []

    ((self.size) - 1).times do |i|
      temp[i] = @stack[i]
    end


    @stack = temp

    @stack

    

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

# test.pop

# p test.stack

# test.size.times do
#   result.stack.push(test.stack.pop)
# end

# p result.stack


class Queue

  def initialize(queue = [])

    @queue = queue

  end

  def enqueue(item)

    @queue[self.size] = item

  end


  def dequeue

    temp = []

    ((self.size) - 1).times do |i|
      temp[i] = @queue[i+1]
    end

    @queue = temp

    @queue
    

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

  def queue
    @queue
  end

end


# test = Queue.new(%w[h e l l o])

# test.enqueue("!")
# test.dequeue



# p test.queue







