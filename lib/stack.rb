class Stack

  def initialize
    @data = []
  end
  
  
  def push(item)
    length = @data.length
    @data[length] = item
  end


  def pop
    top_item = peek
    new_stack = []

    ( @data.length - 1 ).times do |i|
      new_stack << @data[i]
    end

    @data = new_stack
    return top_item
  end


  def peek
    length = @data.length
    @data[ length - 1 ]
  end


  def empty?
    @data.length == 0 
  end
  
end


def reverse_string(str)
  s = Stack.new
  reversed = ""

  str.split("").each do |chr|
    s.push(chr)
  end

  until s.empty?
    reversed += s.pop
  end

  reversed
end