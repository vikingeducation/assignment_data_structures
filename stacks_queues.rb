module DataStructuresAssignment
  
  class Stack

    def initialize
      @data = []
    end

    def empty?
      @data.length == 0
    end

    def push(item)
      @data << item
    end

    def pop
      raise if empty?
      buffer = @data[-1]
      @data.delete_at(-1)
      buffer
    end

    def peek
      @data[-1] unless empty?
    end

  end

  class Queues

end