class Queue
  attr_accessor :queue

  def initialize
    @queue = Array.new(1)
  end

  def enqueue(data)
    resize if full?

    i = 0
    while !@queue[i].nil? do
      i += 1
    end

    @queue[i] = data
  end

  def dequeue
    resize if full?

    if empty?
      puts "Queue is empty"
      return
    end

    ret = @queue[0]

    #shifting
    i = 0
    while !@queue[i].nil? do
      @queue[i] = @queue[i+1]
      i += 1
    end

    ret
  end

  def peek
    if empty?
      puts "Queue is empty"
      return
    end

    i = 0
    while !@queue[i].nil? do
      i += 1
    end

    @queue[i-1]
  end

  def empty?
    @queue[0] == nil
  end

  def full?
    !@queue[@queue.length-1].nil?
  end

  def resize
    temp = Array.new(@queue.length*2)
    counter = 0
    for i in @queue do
      temp[counter] = i
      counter += 1
    end
    @queue = temp
  end
end