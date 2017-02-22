class Stack

  def initialize(str)
    @str = str
  end

  def pop
    return nil if @str.empty?
    last_item = @str[@str.length - 1]
    @str[@str.length - 1] = ""
    last_item
  end

  def push(item)
    @str[@str.length] = item
    @str
  end

  def peek
    @str[@str.length - 1]
  end

  def empty?
    @str.length == 0
  end

end