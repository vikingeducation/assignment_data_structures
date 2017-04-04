class MyQueue < Array
  def initialize(queue)
    @values = []
    @size = 0
  end

  def empty?
    return @size = 0
  end

  def enqueue(el)
    @values[@size] = el
    @size += 1
    return el
  end

  def dequeue
    if !@values.empty?
      el = @values[0]
      @values[0] = nil
      0.upto(@size - 2) do |i|
        @values[i] = @values[i + 1]
      end
      @values[@size - 1] = nil
      @size -= 1
      return el
    end
  end

  def peek
    if !@values.empty?
      return @values[@size - 1]
    end
  end

  def load_and_unload(string)
    letter_array = string.split("")
    (letter_array.length).times do
      first = letter_array.delete_at(0)
      @values << first
    end
    puts @values.join("")
  end
end
queue = Queue.new(queue)
queue.load_and_unload("hello")
