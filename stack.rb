class Stack < Array
  def initialize(stack)
    @values = []
    @size = 0
  end

  def peek
    if !@values.empty?
      return @values[@size - 1]
    end
  end

  def self.empty?
    return @size = 0
  end

  def push(el)
    @values[@size] = el
    @size += 1
  end

  def pop
    if !@values.empty?
      el = @values[@size - 1]
      @values[@size - 1] = nil
      @size -= 1
      return el
    end
  end


  def rev(string)
    letter_array = string.split("")
    (letter_array.length).times do
      last = letter_array.pop
      @values << last
    end
    puts @values.join("")
  end
end
stack = Stack.new(stack)
stack.rev("hello")
