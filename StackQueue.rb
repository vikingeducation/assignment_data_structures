class Stack

  attr_reader :arr

  def initialize
    @arr=[]
  end
 
  def empty?
    length == 0
  end

  # push element to end of array
  def my_push(element)
    @arr[@arr.length] = element
    @arr.join('')
  end

  # pop element ouf of array
  def my_pop
    last = @arr[@arr.length-1]
    @arr = @arr[0..@arr.length-2] unless arr.empty?
    last
  end

  # peek @at last element in the array
  def peek
    @arr[length-1] unless arr.empty?
  end

  # reverse string
  def my_reverse
    reversed = []
    @arr.length.times do |idx|
      reversed[idx] = my_pop
    end
    reversed.join('')
  end

end


s = Stack.new
puts s.my_push("abc")
puts s.my_push("def")
puts s.my_push("you")
puts s.my_reverse

# puts s.my_push("def")
# puts s.my_pop