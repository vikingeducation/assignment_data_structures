require 'pry'
require 'pry-byebug'

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
    @next_index = 0
    set_stack(arr)
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
    return false if empty?
    item = stack[next_index - 1]            # grab item
    stack[next_index - 1 ] = nil            # set it to nil
    self.next_index -= 1                    # moving pointer
    item                                    # return item
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
  # empty? -> first same as next
  # load and unload a string in the same order

  def initialize(arr = [])
    @queue = Array.new( 100 )
    @first_index = 0
    @last_index = 99 # starting at end of queue, to put first entry at 0
    set_queue(arr)
  end

  def set_queue(arr)
    for i in (0..arr.length - 1)
      enqueue(arr[i])
    end
  end

  def enqueue(item)
    # return false if full?
    next_index = last_index + 1
    next_index = 0 if next_index == 100 # allows next_index to wrap
    queue[next_index] = item
    self.last_index = next_index
  end

  def dequeue
    item = queue[first_index]                # grab item
    self.first_index += 1  # moving first pointer to next item
    # TODO: Account for wrapping and full queue
    # self.first_index = 0 if self_index == 100
    item
  end

  # Top item only
  def peek
    queue[first_index]
  end

  def empty?
    return true if first_index - last_index == 1
    return true if last_index == 99 && first_index == 0
    false
  end

  # def full?
  #   return true if first_index - last_index == 1
  #   return true if last_index == 99 && first_index == 0
  #   false
  # end

  protected

  attr_accessor :last_index, :first_index

  private

  attr_reader :queue

end
