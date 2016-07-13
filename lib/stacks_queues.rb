module DataStructuresAssignment
  
  class Stack
    attr_reader :data

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
      raise if empty?
      @data[-1]
    end

  end

  class Queues

    def initialize
      @data = []
    end

    def empty?
      @data.length == 0
    end

    def enqueue(item)
      return @data = [item] if empty?
      buffer = [item]
      @data = buffer + @data
    end

    def dequeue
      raise if empty?
      buffer = @data[0]
      @data.delete_at(0)
      buffer
    end

    def peek
      raise if empty?
      @data[0]
    end

  end

end