# - Create a Stack class which implements methods to push, pop,
# and peek at the top item.
# - Add an empty? helper.
# - Verify that you can reverse a string with your stack:

class Stack
  attr_accessor :container

  def initialize(cont = [])
    @container = cont
  end

  def push(val)
    len = container.length
    container[len] = val
    self
  end

  def pop
    last = container.length - 1
    stack, item = container[0..last-1], container[last]
    @container = last.zero? ? [] : stack
    item
  end

  def peek(i = nil)
    return container[i] if i
    last = container.length - 1
    container[last]
  end

  def empty?
    container.length == 0
  end

end
