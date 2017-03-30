class Queue
  def initialize
    @contents = []
    @size = 0
  end

  def peek
    @contents[0] unless empty?
  end

  def enqueue(item)
    @contents[@size] = item
    @size += 1
  end

  def dequeue
    item = @contents[0]

    temp_array = []
    unless @size == 1
      for i in (1..@size - 1)
        temp_array[i - 1] = @contents[i]
      end
    end

    @contents = temp_array
    @size -= 1

    item
  end

  def empty?
    @size == 0
  end
end
