=begin
  The Queue

Create a Queue class which implements the methods enqueue, dequeue and peek.
Add methods for empty?
Verify that you can load and unload a string in the same order with your queue.

=end

class Queue

  def initialize
    @array = Array.new
  end

  # takes an item out from the start
  # returns the item (Done)
  def dequeue
    index = 0
    dequeued_item = @array[index]
    new_array = []
    while index < @array.length
      new_array[index] = @array[index + 1]
      index += 1
    end
    @array = new_array
    dequeued_item
  end

  # pushes an item to the end
  def enqueue(item)
    @array[@array.length] = item
  end

  def peek
    @array[0]
  end

  private

  def empty?
    @array.length == 0
  end
end

x = Queue.new
x.enqueue("s")
x.enqueue("t")
x.enqueue("r")
x.enqueue("i")
x.enqueue("n")
x.enqueue("g")
y = []
y.push(x.dequeue)
y.push(x.dequeue)
y.push(x.dequeue)
y.push(x.dequeue)
y.push(x.dequeue)
y.push(x.dequeue)
puts y.join("")