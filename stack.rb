class Stack

  def initialize(arr=[])

    @arr = arr

  end

  def push(item)

    new_arr = Array.new(@arr.length+1)
    for i in (0..@arr.length-1) do
      new_arr[i] = @arr[i]
    end
    new_arr[@arr.length] = item
    @arr = new_arr

  end

  def pop

    raise "The stack is empty." if empty?

    item = @arr[@arr.length-1]

    @arr = @arr[0..@arr.length-2]

    item

  end

  def peek

    raise "The stack is empty." if empty?

    item = @arr[@arr.length-1]

  end

  def empty?

    @arr.length == 0

  end

end