Node = Struct.new(:data, :next)

# ruby queue implementation
class Queue
  def initialize
    @first = nil
    @last = nil
    @len = 0
  end

  def enqueue(data)
    empty? ? new_first(data) : add_node(data)
    @len
  end

  def dequeue
    return false if empty?
    return finalitem if @len == 1
    data = @last.data
    current = @first
    current = current.next until current.next == @last
    @last = current
    @len -= 1
    data
  end

  def peek
    return false if empty?
    @last.data
  end

  def empty?
    @len.zero?
  end

  private

  def new_first(data)
    @first = Node.new(data, nil)
    @last = @first
    @len += 1
  end

  def add_node(data)
    second = @first
    @first = Node.new(data, second)
    @len += 1
  end

  # deals with nil pointers and variable testing of nil.next
  def finalitem
    data = @first.data
    @len = 0
    @first = nil
    @last = nil
    data
  end
end

# test string enqueue/dequeue
my_queue = Queue.new
test_word = 'queue'
test_word.length.times do |iter|
  my_queue.enqueue(test_word[iter])
end
puts my_queue.dequeue until my_queue.empty?
