class Stack

  def initialize(str)
    @str = str
  end

  def pop
    str2 = ""
    last_item = @str[@str.length - 1]
    (@str.length - 1).times { |i| str2[i] = @str[i] }
    @str = str2
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
    @str[0] == nil
  end

end