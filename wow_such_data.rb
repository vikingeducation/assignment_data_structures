require 'pry'

class Datastructures
  def initialize(my_ary)
    @my_ary = my_ary
  end

  def is_full?
    if @my_ary[0] == nil
      false
    else
      true
    end
  end

  def is_empty?
    if @my_ary[0]
      false
    else
      true
    end
  end

  def what_size
    i = 0
    while @my_ary[i]
     i += 1
    end 
    answer = i - 1
  end

  def peek
    return @my_ary[-1]
  end
end

class Stack < Datastructures
  def initialize(my_ary)
    @my_ary = my_ary
  end

  def such_push(push_element)
    @my_ary += push_element
  end

  def such_pop
    popper = @my_ary[-1]
    @my_ary = @my_ary[0..-2]
    return popper
  end
end


class Queues < Datastructures
  def initialize(my_ary)
    @my_ary = my_ary
  end

  def enqueue(my_element)
    @my_ary = my_element + @my_ary
  end

  def dequeue
    removed = @my_ary[-1]
    @my_ary = @my_ary[0..-2]
    return removed
  end
end
binding.pry

schwad = "hi"