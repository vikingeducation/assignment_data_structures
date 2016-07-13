# Create a Queue class which implements the methods enqueue, dequeue and peek.
# Add methods for empty?
# Verify that you can load and unload a string in the same order with your queue.

class Queue

  attr_reader :data

  def initialize(data = [])
    @data = data
  end

  def enqueue(val)
    if empty?
      @data[0] = val
    else
      (@data.length + 1).times do |index|
        @data[@data.length - index] = @data[@data.length - index - 1]
      end
      @data[0] = val
    end
  end

  def dequeue
    temp_var = @data[@data.length - 1]
    @data = @data[0..@data.length - 2] 
    temp_var
  end

  def peek(place)
    return @data[@data.length - 1] if place == "first"
    return @data[0] if place == "last"
  end

  def empty? 
    @data.length == 0
  end


end

q = Queue.new
q.enqueue("s")
q.enqueue("t")
q.enqueue("r")
q.enqueue("i")
q.enqueue("n")
q.enqueue("g")
print q.data
puts
puts q.dequeue
puts q.dequeue
puts q.dequeue
puts q.dequeue
puts q.dequeue
puts q.dequeue
