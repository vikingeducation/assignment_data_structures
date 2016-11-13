# arrays
# length method
# forward/positive indices
# loop, while, times, for
# do not use each, map
# do not use delete, at?, empty?
# verify you can load and unload in same order

# queue:
  # enqueue
  # dequeue
  # peek the start (can implement other elements)
  # add an empty? helper

class Queue

  attr_reader :array

  def initialize(array = [])
    @array = array
  end

  def enq(elem)
    # unshift
    enq_array = Array.new(@array.length + 1)

    enq_array[0] = elem

    index = 0

    while index < @array.length
      enq_array[index + 1] = @array[index]
      index += 1
    end

    @array = enq_array
  end

  def deq
    # pop
    deq_array = Array.new(@array.length - 1)

    index = 0

    while index < @array.length - 1
      deq_array[index] = @array[index]
      index += 1
    end
    @array = deq_array
  end

  def peek(index = 0)
    @array[index]
  end

  def empty?
    @array.length == 0
  end
end

q = Queue.new

q.enq(3)
print q.array
puts
q.enq(5)
print q.array
puts
q.deq
print q.array
puts