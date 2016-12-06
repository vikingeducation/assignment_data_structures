class Stack
  def initialize(size)
    @stack = Array.new(size)
    @last = nil
  end

  def push(item)
    if @last.nil?
      @last = 0
    else
      @last += 1
    end

    @stack[@last] = item
  end

  def pop
    return nil if @last.nil?
    item = @stack[@last]

    if @last == 0
      @last = nil
    else
      @last -= 1
    end

    item
  end

  def peek
    return nil if @last.nil?
    @stack[@last]
  end

  def empty?
    @last.nil?
  end
end
