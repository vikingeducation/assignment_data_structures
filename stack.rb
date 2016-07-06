class Stack
  attr_accessor :data
  def initialize
    @data = []
  end

  def push(item)
    data << item
  end

  def pop
    data.delete_at(data.length - 1)
  end

  def peek
    data[data.length - 1]
  end

  def empty?
    data.length == 0
  end
end

str = "hello"
p str
s = Stack.new
str.split("").each { |c| s.push(c) }
rev_str = ""
(str.length).times {rev_str << s.pop }
p rev_str