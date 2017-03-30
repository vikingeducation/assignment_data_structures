class Stack
  def initialize
    @contents = []
    @size = 0
  end

  def peek
    @contents[@size - 1] unless empty?
  end

  def push(item)
    @contents[@size] = item
    @size += 1
  end

  def pop
    unless empty?
      item = @contents[@size - 1]
      @contents[@size - 1] = nil
      @size -= 1
      item
    end
  end

  def empty?
    @size == 0
  end
end
