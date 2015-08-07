class Queue

  def initialize
    @data = []
  end
  
  
  def dequeue
    new_queue = []
    length = @data.length
    item = @data[ length - 1 ]

    ( length - 1 ).times do |i|
      new_queue << @data[i]
    end

    @data = new_queue
    return item
  end


  def enqueue(item)
    new_queue = [item]

    ( @data.length ).times do |i|
      new_queue << @data[i]
    end

    @data = new_queue
  end


  def peek
    length = @data.length
    @data[ length - 1 ]
  end


  def empty?
    @data.length == 0 
  end
  
end


def load_string(str)
  q = Queue.new
  string = ""

  str.split("").each do |chr|
    q.enqueue(chr)
  end

  until q.empty?
    string += q.dequeue
  end

  return string
end