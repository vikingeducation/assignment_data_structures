class Stack

  def initialize
    @el = []
  end

  def push(input)
    @el += [input]
  end

  def pop
    last_item = @el[@el.length-1]
    if @el.length > 1
      @el = @el[0..@el.length-2]
    else
      @el=[]
    end
    return last_item
  end

  def peek
    @el[@el.length-1]
  end

  def empty?
    @el.length == 0
  end

  def size
    @el.length
  end

end

# stack_string = Stack.new
# word = "good"
# new_word= ""
# word.split("").each {|letter| stack_string.push(letter)}

# until stack_string.empty?
#   new_word += stack_string.pop
# end
# puts new_word

class Queue

  def initialize
    @order = []
  end

  def enqueue(input)
    @order << input
  end

  def dequeue
    first_item = @order[0]
    if size > 1
      @order = @order[1..@order.length-1]
    else
      @order = []
    end
    first_item
  end

  def peek
    @order[0]
  end

  def empty?
    @order.length == 0
  end

  def size
    @order.length
  end

end

# queue_string = Queue.new
# word = "good"
# new_word= ""
# word.split("").each {|letter| queue_string.enqueue(letter)}
# until queue_string.empty?
#   new_word += queue_string.dequeue
# end
# puts new_word