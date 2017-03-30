class Stack
  def initialize
    @contents = []
    @size = 0
  end

  def peek
    contents[self.size - 1] unless empty?
  end

  def push(item)
    contents[self.size] = item
    self.size += 1
  end

  def pop
    unless empty?
      item = contents[self.size - 1]
      contents[self.size - 1] = nil
      self.size -= 1
      item
    end
  end

  def empty?
    self.size == 0
  end

  private

  attr_reader :contents

  protected

  attr_accessor :size
end
