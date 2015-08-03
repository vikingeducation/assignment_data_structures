Node = Struct.new(:word, :definition, :next)

class LinkedList
  attr_accessor :head, :last
  
  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end
  

  def find(index)

    crawler_location = 0
    current_node = @head

    until crawler_location == index
      break if current_node == nil
      puts "#{current_node.word}: #{current_node.definition} at index #{crawler_location}"
      current_node = current_node.next
      crawler_location += 1
    end

    current_node

  end


  def insert(word, definition, index)

    new_node = Node.new(word, definition, nil)

    previous_node = find(index - 1)

    # handle inserting at the end of the list by just calling append
    if previous_node.next == @last
      append(word, definition)
    # and at the head
    elsif previous_node == nil
      new_node.next = @head
      @head = new_node
    else
      new_node.next = previous_node.next
      previous_node.next = new_node
    end

  end


  def append(word, definition)

    new_node = Node.new(word, definition, nil)
    # is the first node being added?
    if @head == nil
    
      @head = new_node
      @last = new_node
    
    # Normal append at the end of the list
    # This is Big O of constant time, we're just re-assigning the @last
    # variable so it doesn't matter how big the list is
    else 

      @last.next = new_node
      @last = new_node

    end
    
  end
  
end