class Queue
  attr_accessor :str

  def initialize(str)
    @str = str
  end

  def enqueue(letter)
    str2 = letter
    (@str.length).times {|i| str2 += @str[i]}
    @str = str2
    @str
  end

  def dequeue
    last_item = @str[@str.length - 1]
    str2 = ""
    (@str.length - 1).times { |i| str2[i] = @str[i] }
    @str = str2
    last_item
  end

  def peek
    @str[@str.length - 1]
  end

  def empty?
    @str[0] == nil
  end

end