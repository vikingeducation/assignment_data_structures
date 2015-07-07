class Queue

  def initialize
    @arr=[]
  end

  def enqueue(el)
    @arr[@arr.length]=el
  end

  def dequeue
    @arr=@arr[1..@arr.length-1]

  end
end

q=Queue.new
puts q.enqueue("el")
puts q.dequeue