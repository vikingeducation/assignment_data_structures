

  # Create a Stack class which implements methods to push, pop, and peek at the top item.
  # Add an empty? helper.
  # Verify that you can reverse a string with your stack:


class Stack

  def initialize(data = [])
    @data = data
  end


  def push(val)
    @data[@data.length] = val
  end

  def pop
    @data[@data.length - 1] = nil  
  end

  def peek
    @data[@data.length - 1]
  end

  def empty? 
    @data.length == 0
  end

end

str = Stack.new(["s","t","r","i","n","g"])
(str.length).times do 
  arr = []
  
