require 'pry'

class Stack

  def initialize (max_size)
    @stack_array = []
    @position = 0
    @max_size = max_size
  end

  def push item
    if (@position != @max_size)
      @stack_array << item
      @position += 1
    else
      puts "Error, stack is full"
    end
  end

  def pop
    if (@position != 0)
      item = @stack_array[@position-1]
      @position -= 1
      @stack_array = @stack_array[0..@position-1]
      item
    else
      puts "Error, stack is empty"
    end
  end

  def peek item
    @stack_array[@position-1]
  end

  def full?
    @max_size == @position
  end

  def empty?
    @position == 0
  end

  def size
    @max_size
  end
end

binding.pry