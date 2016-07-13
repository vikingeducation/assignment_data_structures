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
      new_array = [val]
      @data = new_array
    else
      new_array = Array.new(@data.length + 1)
      @data.length.times do |index|
        new_array[index + 1] = @data[index]
      end
      new_array[0] = val
      @data = new_array
    end
  end

  def dequeue
    temp_var = @data[@data.length - 1]
    new_data = Array.new(@data.length - 1) 
    new_data.length.times do |counter|
      new_data[counter] = @data[counter]
    end
    @data = new_data
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
