class Queue

	def initialize 
    @queue = []
	end

  def enqueue(item)
    @stack[@queue.length] = item
  end

  def dequeue

		new_queue = []
		i = 1

		while i < @queue.length
		  new_queue[i-1] = @queue[i]
		  i += 1
    end

    @queue = new_queue

  end

  def peek
    @queue[@queue.length-1]
  end

  def empty?
    @queue.length == 0
  end

end