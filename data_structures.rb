#The Stack

class Stack

  def initialize(data =[])
    @data = data
    @cursor = data.length
  end

  def push(elt)
    @data[@cursor] = elt
    @cursor += 1
  end

  def pop
    if @cursor == 0
      puts "EmptyStack"
      return
    end
    @cursor -= 1
    ret_val = @data[@cursor]
    @data[@cursor] = nil
    ret_val
  end

  def peek
    @data[@cursor-1]

  end

  def empty?
    @cursor == 0 ? true: false
  end

end

#s = Stack.new
#s.push("sam")
#puts s.pop
#puts s.pop

reverse_string = Stack.new
str = "samantha"
for i in (0...str.length)
  reverse_string.push str[i]
end

new_string = ""
while !reverse_string.empty? do
  #puts reverse_string.pop
  new_string << reverse_string.pop
end
puts new_string

