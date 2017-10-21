class Queue
  attr_accessor :str

  def initialize(str)
    @str = str
  end

  def enqueue(letter)
    @str = @str + letter
    @str
  end

  def dequeue
    return nil if @str.empty?
    first_item = @str[0]
    @str[0] = nil
    first_item
  end

  def peek
    @str[@str.length - 1]
  end

  def empty?
    @str[0] == nil
  end

end