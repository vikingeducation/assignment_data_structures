class Stack

  attr_reader :arr

  def initialize
    @arr=[]
  end
 
  def empty?
    length == 0
  end

  # push element to end of array
  def push(element)
    @arr[arr.length] = element
  end

  # pop @element ouf of array
  def pop
    @arr[0..arr.length-2] unless arr.empty?
  end

  # peek @at last element in the array
  def peek
    @arr[length-1] unless arr.empty?
  end


end


s = Stack.new
puts s.push("abc")