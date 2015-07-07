Word = Struct.new(:word,:definition, :next)

class LinkedList

  attr_accessor :head, :tail

  def initialize(first_node = nil)
    @head = first_node
    @tail = first_node
  end

  def add_first_node(word, definition)
    @head = Word.new(word, definition, nil)
    @last = @head
  end

  # If at end of list O(1)
  def add_node(word, definition)
    if @head.nil?
      add_first_node(word, definition)
    else
      new_node = Word.new(word, definition, nil)
      @last.next = new_node
      @last = new_node
    end
    puts "Added new word: #{word} with definition: #{definition}."
  end

  # Big O time: O(n)
  def read_node(pos)
    counter = 0
    current_node = @head
    until counter >= pos
      current_node = current_node.next
      counter += 1
    end

    puts "Found word #{word} with definition #{definition} at position #{pos}"
  end

  # If not inserting at end of list, O(n)
  def insert_node(word, definition, pos=nil)
    pos ? insert_at_position(word, definition, pos) : add_node(word, definition)
  end

  def insert_at_position(word, definition, pos)
    counter = 0
    current_node = @head
    until counter >= pos - 1
      current_node = current_node.next
      counter += 1
    end
    current_node.next = Word.new(word, definition, current_node.next.next)
  end

  def reverse
#   (nil->)1<-2->3->4->5->6->7->nil
# nil<-1<-2<-3<-4<-5<-6<-7

    #initial setup
    current_node = @head
    next_node = current_node.next
    current_node.next = nil

    #loop

    node_after = next_node.next
    until node_after == @tail
      next_node.next = current_node
      current_node = next_node

      next_node = node_after
      node_after = next_node.next
    end

  end

end