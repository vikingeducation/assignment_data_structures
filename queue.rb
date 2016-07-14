class Queue

  def initialize(size)
    @queue = Array.new(size)
    @last = nil
    @first = nil
  end

  def enqueue(item)
    if @last.nil?
      @last = 0
      @first = 0
    else
      @last += 1
    end

    @queue[@last] = item
  end

  def dequeue
    return nil if @first.nil?

    item = @queue[@first]

    if @first == @last
      @last = nil
      @first = nil
    else
      @first += 1
    end

    item
  end

  def peek
    return nil if @first.nil?
    @queue[@first]
  end

  def empty?
    @first.nil?
  end
end

def repeat (str)
  s = Queue.new(100)

  str.length.times do |index|
    s.enqueue(str[index])
  end

  repeat = ""
  str.length.times do |index|
    repeat << s.dequeue
  end
  repeat
end

puts repeat("hello there!")
