class Stack

  def initialize()
    @array = []
    @last_item = nil
  end


  def push(new_item)

    if @last_item == nil
      @array[0] = new_item

    else
      count = 0

      until @array[count] == @last_item
        count += 1
      end

      @array[count + 1] = new_item
    end

    @last_item = new_item

  end


  def pop

    if @last_item.nil?
      puts "Stack is empty!"

    else
      count = 0
      previous_item = nil

      until @array[count] == @last_item
        previous_item = @array[count]
        count += 1
      end

      @last_item = previous_item
      @array.delete_at(count)

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

  end


  def size

  end

end