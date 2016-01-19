=begin
  Here's the catch -- you can use Arrays to help implement your Stack and Queue, but you can only use the following limited subset of their available functionality:

Use forward indexes only (e.g. my_array[3], not my_array[-1])
Use the length method.
That's it. This is because arrays in lower level languages like C only come with those two functions and everything else needs to be done explicitly.

You can also use simple loops like loop or while or times or for, but you can NOT use any of the Enumerable or Array loops like each, map, etc.

**** Note: "Real" low-level data structures are a fixed size and need to be manually resized whenever they hit capacity. We'll skip that particular bit in the interest of time.

=end

class Stack

  def initialize
    @array = Array.new
  end

  def peek
    @array[@array.length-1]
  end

  # Needs to return the popped item. (Done)
  # Needs to modify array to be same as previous array but without the popped item. (Done)
  def pop
    popped_item = @array[@array.length-1]
    new_array = []
    index = 0
    while index < (@array.length-1) 
      new_array[index] = @array[index]
      index += 1
    end
    @array = new_array
    popped_item
  end

  # Takes an argument to add to array
  # Returns array
  def push(item)
    @array[@array.length] = item
    @array
  end

  private

  def empty?
    @array.length == 0
  end

end

x = Stack.new
x.push("s")
x.push("t")
x.push("r")
x.push("i")
x.push("n")
x.push("g")
y = []
y.push(x.pop)
y.push(x.pop)
y.push(x.pop)
y.push(x.pop)
y.push(x.pop)
y.push(x.pop)
puts y.join("")