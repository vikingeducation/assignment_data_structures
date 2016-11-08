class Stack
  # push
  # pop
  # peek
  # empty

  # Basic data: Array
  # LIFO, stack of plates
  # only indexing, length
  # No enumerable

  def initialize(arr = [])
    @stack = Array.new( 100 )
    set_stack(arr)
    @next_index = 0
  end

  def set_stack(arr)
    for i in (0..arr.length - 1)
      push(arr[i])
    end
  end

  def push(item)
    stack[next_index] = item
    self.next_index += 1
  end

  def pop
    item = stack[next_index - 1]   # grab item
    stack[next_index - 1 ] = nil   # set it to nil
    self.next_index -= 1           # moving pointer
    item                           # return item
  end

  # Top item only
  def peek
    stack[next_index - 1]
  end

  def empty?
    stack[0] == nil
  end

  protected

  attr_accessor :next_index  

  private

  attr_reader :stack

end



class Queue

  # enqueue
  # dequeue
  # peek
  # empty?
  # load and unload a string in the same order

def initialize(arr = [])
    @queue = Array.new( 100 )
    set_queue(arr)
    @next_index = 0
  end

  def set_queue(arr)
    for i in (0..arr.length - 1)
      enqueue(arr[i])
    end
  end

  def enqueue(item)
    queue[next_index] = item
    self.next_index += 1
  end

  def dequeue
    item = queue[0]                # grab item
    queue[next_index - 1 ] = nil   # set it to nil
    self.next_index -= 1           # moving pointer
    item                           # return item
  end

  # def pop
  #   item = queue[next_index - 1]   # grab item
  #   queue[next_index - 1 ] = nil   # set it to nil
  #   self.next_index -= 1           # moving pointer
  #   item                           # return item
  # end

  # Top item only
  def peek
    queue[next_index - 1]
  end

  def empty?
    queue[0] == nil
  end

  protected

  attr_accessor :next_index  

  private

  attr_reader :queue  

end







