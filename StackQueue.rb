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


# s = Stack.new
# puts s.my_push("abc")
# puts s.my_push("def")
# puts s.my_push("you")
# puts s.my_reverse

# puts s.my_push("def")
# puts s.my_pop


class Queue

  attr_reader :arr

  def initialize
    @arr = []
  end


  def empty?
    length == 0
  end


  # insert item into front of array, 0th position
  def my_enqueue(element)
    new_arr = []
    new_arr[0] = element
    @arr.length.times do |idx|
      new_arr[idx+1] = @arr[idx]
    end
    @arr = new_arr.join
  end


  # insert item into back of array, last position
  def my_dequeue
    unless @arr.empty?
      last = @arr[@arr.length-1]
      @arr = @arr[0..@arr.length-2]
      last
    end
  end

end


q = Queue.new
puts q.my_enqueue("1")
puts q.my_enqueue("2")
puts q.my_enqueue("3")
puts q.my_enqueue("4")
puts q.my_dequeue
puts q.my_dequeue
puts q.my_dequeue
puts q.my_dequeue
# puts q.arr