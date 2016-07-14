

  # Create a Stack class which implements methods to push, pop, and peek at the top item.
  # Add an empty? helper.
  # Verify that you can reverse a string with your stack:


class Stack

  attr_reader :data

  def initialize(data = [])
    @data = data
  end


  def push(val)
    # iterate through the entire thing
    # at end of iteration, add last value where it belongs
    raise if empty?
    new_data = Array.new(@data.length + 1) 
    (new_data.length - 1).times do |counter|
      new_data[counter] = @data[counter]
    end
    @data = new_data
    new_data[new_data.length - 1] = val 

  end

  def pop
    raise if empty?
    temp_var = @data[@data.length - 1]

    new_data = Array.new(@data.length - 1) 
    new_data.length.times do |counter|
      new_data[counter] = @data[counter]
    end
    @data = new_data
    temp_var
  end

  def peek
    raise if empty?
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
print arr
  
