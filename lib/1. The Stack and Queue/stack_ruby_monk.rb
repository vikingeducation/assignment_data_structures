class Stack
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @top = -1
  end

  def pop
    if empty?
      nil
    else
      popped = @store[@top]
      @store[@top] = nil
      @top = @top.pred
      popped
    end
  end

  def push(element)
    if full? or element.nil?
      nil
    else
      @top = @top.succ
      @store[@top] = element
      self
    end
  end

  def size
    @size
  end

  def look
    @store[@top]
  end

  private

  def full?
    @top == (@size - 1)
  end

  def empty?
    @top == -1
  end
end

x = Stack.new(6)
x.push("s")
x.push("t")
x.push("r")
x.push("i")
x.push("n")
x.push("g")
y = []
y.push(x.pop)
y.push(x.pop)
y.push(x.pop)
y.push(x.pop)
y.push(x.pop)
y.push(x.pop)
puts y.join("")
