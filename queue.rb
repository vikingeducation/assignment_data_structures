class Queue
  def initialize
    @data = Array.new()
  end

  def empty?
    @data.length == 0
  end

  def enqueue(x)
    @data << x
  end

  def dequeue
    response = peek
    @data = @data[1..@data.length]
    response
  end

  def peek
    response = @data[0]
  end

  def length
    @data.length
  end
end

queue = Queue.new

# load and unload a string

string = "This is the lovely string I am going to load and unload."

i = 0

while i < string.length do
  queue.enqueue(string[i])
  i += 1
end

str_unload = ""

queue.length.times {
  str_unload += queue.dequeue
}
puts "load"
puts string
puts "unload"
puts str_unload
