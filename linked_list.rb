Node = Struct.new(:word, :def, :next)

class LinkedList
  attr_accessor :head, :tail

  def initialize(first_node = nil)
    @head = first_node
    @tail = first_node
  end

  def add_first_node(word, definition = nil)
    @head = Node.new(word, definition, nil)
    @tail = @head
  end

  def add_node(word, definition = nil)
    if @head == nil
      add_first_node(word, definition)
    else
      new_node = Node.new(word, definition, nil)
      @tail.next = new_node
      @tail = new_node
    end
  end

  # The Big-O of this operation is k = index
  def insert_node(index, word, definition = nil)
    step = 0
    current_node = @head
    previous_node = nil
    while step < index
      previous_node = current_node
      current_node = current_node.next
      step += 1
    end
    next_node = current_node.next
    current_node = Node.new(word, definition, next_node)
    previous_node.next = current_node
  end


  # The Big-O of this operation is n if the array if big especially
  def find_node(index)
    step = 0
    current_node = @head
    while step < index
      current_node = current_node.next
      step += 1
      puts "Taking step no #{step}"
    end
    puts "The node under index #{index} is #{current_node}"
    current_node
  end

  def push_all_to_stack(head_node)
    stack = []
    current_node = head_node
    while current_node.next != nil
      stack << current_node
      current_node = current_node.next
    end
    stack << @tail
    return stack
  end

  def create_linked_list_from_stack(stack)
    new_head = stack.pop
    current_node = new_head
    while stack.length > 0
      current_node.next = stack.pop
      current_node = current_node.next
      if stack.size == 0
        current_node.next = nil
        @tail = current_node
      end
    end
    new_head
  end

  def reverse
    stack = push_all_to_stack(@head)
    new_head = create_linked_list_from_stack(stack)
    @head = new_head
    self
  end
  
end