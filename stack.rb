class Stack

  attr_reader :size

  def initialize
    @stack = []
    @size = 0
  end

  def push(element)
    @stack += [element]
    @size += 1
  end

  def pop
    popd = @stack[size - 1]
    @stack = @stack[0..size - 2]
    @size -= 1
    popd
  end

  def peek
    @stack[size - 1]
  end

  def empty?
    return true if size == 0
    false
  end

end

staxx = Stack.new
staxx.push("h")
staxx.push("e")
staxx.push("l")
staxx.push("l")
staxx.push("o")
5.times do
  puts "#{staxx.pop}"
end