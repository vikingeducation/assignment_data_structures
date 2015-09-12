#implementing a basic stack using basic static array

class Stack
  attr_accessor :stack

  def initialize
    @stack = Array.new(1)
  end

  def push(data)
    resize if full?

    i = 0
    while !@stack[i].nil? do
      i += 1
    end

    @stack[i] = data
  end

  def pop
    if !empty?
      i = 0
      while !@stack[i].nil? do
       i += 1
      end
      ret = stack[i-1]
      @stack[i-1] = nil

      ret
    else
      puts "Stack is empty"
    end
  end

  def peek
    if empty?
      puts "Stack is empty"
      return
    end

    i = 0
    while !@stack[i].nil? do
      i += 1
    end

    @stack[i-1]
  end

  def empty?
    @stack[0] == nil
  end

  def full?
    !@stack[@stack.length-1].nil?
  end

  def resize
    temp = Array.new(@stack.length*2)
    counter = 0
    for i in @stack do
      temp[counter] = i
      counter += 1
    end
    @stack = temp
  end
end
