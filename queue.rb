class Queue
  # attr_reader :full_stack
  def initialize
    @content = []
  end

  def enqueue data
    length = @content.length
    @content[length] = data
    @content
  end

  def dequeue
    length = @content.length unless empty?
    if length == 1
      @content = nil
    else
      @content = @content[1..length - 1] unless empty?
    end
    @content
  end

  def empty?
    @content == nil
  end

end
