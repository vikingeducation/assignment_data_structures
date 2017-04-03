class Stack < Array
  def initialize(stack)
    @stack = []
  end

  def self.empty?
    return self.length = 0
  end

  def push(el)
    self[self.length] = el
  end

  def pop
    if !self.empty?
      self.delete_at(self.length - 1)
    end
  end

  def peek
    if !self.empty?
      return self[self.length - 1]
    end
  end

  def rev(string)
    letter_array = string.split("")
    (letter_array.length).times do
      last = letter_array.pop
      @stack << last
    end
    puts @stack.join("")
  end
end
stack = Stack.new(stack)
stack.rev("hello")
