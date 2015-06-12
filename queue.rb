class Queue

  def initialize
    @array = []
    @head = nil
    @last = nil
  end


  def enqueue(new_item)
    # add item to end
    if @head.nil?
      @array[0] = new_item
      @head = new_item
      @last = new_item
    else
      counter = 0

      until @array[counter] == @last
        counter += 1
      end

      @array[counter + 1] = new_item
      @last = new_item
    end

  end


  def dequeue
    # pop item from front
    if @head.nil?
      puts "Queue is empty!"
    else
      @head = @array[1]
      @array.delete_at(0)
    end

  end


  def peek
    if @head.nil?
      puts "Queue is empty!"
    else
      @head
    end
  end

end