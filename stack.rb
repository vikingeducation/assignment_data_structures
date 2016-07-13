

  # Create a Stack class which implements methods to push, pop, and peek at the top item.
  # Add an empty? helper.
  # Verify that you can reverse a string with your stack:


class Stack

  attr_reader :data

  def initialize(data = [])
    @data = data
  end


  def push(val)
    @data[@data.length] = val
  end

  def pop
    temp_var = @data[@data.length - 1]
    @data = @data[0..@data.length - 2] 
    temp_var
  end

  def peek
    @data[@data.length - 1]
  end

  def empty? 
    @data.length == 0
  end

end

str = Stack.new(["s","t","r","i","n","g"])
arr = []
(str.data.length).times do 
  arr.push(str.pop)
end
puts arr
  
