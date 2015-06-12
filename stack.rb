class Stack

  def initialize()
    @array = []
    @last_item = nil
  end


  def push(new_item)

    if @last_item == nil
      @array[0] = new_item

    else
      counter = 0

      until @array[counter] == @last_item
        counter += 1
      end

      @array[counter + 1] = new_item
    end

    @last_item = new_item

  end


  def pop

    if @last_item.nil?
      puts "Stack is empty!"

    else
      counter = 0
      previous_item = nil

      until @array[counter] == @last_item
        previous_item = @array[counter]
        counter += 1
      end

      @last_item = previous_item
      @array.delete_at(counter)

    end

  end


  def peek

    if @last_item.nil?
      puts "Stack is empty!"
    else
      @last_item
    end

  end


  def empty?
    @last_item.nil?
  end


  def size

    if self.empty?
      size = 0

    else
      size = 1

      until @array[size - 1] == @last_item
        size += 1
      end

      size

    end

  end

end