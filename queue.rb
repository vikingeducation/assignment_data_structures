class Queue
  def initialize(queue)
    @queue = []
  end

  def self.empty?
    return self.length = 0
  end

  def enqueue(el)
    self[self.length] = el
  end

  def dequeue
    if !self.empty?
      self.delete_at(0)
    end
  end

  def peek
    if !self.empty?
      return self[self.length - 1]
    end
  end

  def load_and_unload(string)
    letter_array = string.split("")
    (letter_array.length).times do
      first = letter_array.delete_at(0)
      @queue << first
    end
    puts @queue.join("")
  end
end
queue = Queue.new(queue)
queue.load_and_unload("hello")
