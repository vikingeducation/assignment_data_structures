class Queue

  def initialize(size = 10)
    @max_size = size
    @data = Array.new(@max_size) # defined set size to test #full?
    @head = nil
    @last = nil
  end


  def enqueue(new_item)

    if self.full?
      puts "Queue is full!"

    elsif @head.nil?
      @data[0] = new_item
      @head = new_item
      @last = new_item

    else
      counter = 0

      until @data[counter].nil?
        counter += 1
      end

      @data[counter] = new_item
      @last = new_item
    end

  end


  def dequeue
    # pop item from front
    if @head.nil?
      puts "Queue is empty!"
    else
      output = @head # to return at end

      self.size.times do |index|
        if index + 1 == @max_size
          @data[index] = nil
        else
          @data[index] = @data[index + 1]
        end
      end

      @head = @data[0]
      @last = nil if @head.nil?

      output

    end

  end


  def peek
    if @head.nil?
      puts "Queue is empty!"
    else
      @head
    end
  end


  def full?
    !@data[@max_size - 1].nil?
  end


  def empty?
    @head.nil?
  end


  def size
    if self.empty?
      0
    else
      size = 1

      until size == @max_size || @data[size].nil?
        size += 1
      end

      size
    end

  end

end