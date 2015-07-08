class Queue

  def initialize(arr=[])
    @arr = arr
  end

  def enqueue(item)

    new_arr = Array.new(@arr.length+1)
    for i in (0..@arr.length-1) do
      new_arr[i] = @arr[i]
    end
    new_arr[@arr.length] = item
    @arr = new_arr

  end

  def dequeue

    raise "The stack is empty." if empty?

    item = @arr[0]

    @arr = @arr[1..@arr.length-1]

    item

  end

  def peek

    raise "The stack is empty." if empty?

    @arr[0]

  end

  def empty?

    @arr.length == 0

  end

end