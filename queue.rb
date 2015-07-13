class Queue

  attr_reader :arr

  def initialize
    @arr=[]
  end

  def enqueue(el)
    @arr[@arr.length]=el
  end

  def dequeue
    @arr=@arr[1..@arr.length-1]

  end

  def peek(index = 0)
    unless index == 0
      return @arr[@arr.length - 1]
    end
    @arr[index]
  end

  def empty?
    @arr[0] == nil
  end

  def size
    i = 0
    until @arr[i] == nil
      i += 1
    end
    i
  end


end




