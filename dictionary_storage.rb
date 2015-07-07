Word = Struct.new(:word,:definition, :next)

class LinkedList

  attr_accessor :head, :tail

  def initialize(first_node = nil)
    @head = first_node
    @tail = first_node
  end

  def add_first_node(word, definition)
    @head = Word.new(word, definition, nil)
    @tail = @head
  end

  # If at end of list O(1)
  def add_node(word, definition)
    if @head.nil?
      add_first_node(word, definition)
    else
      new_node = Word.new(word, definition, nil)
      @tail.next = new_node
      @tail = new_node
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
    old_start = @head
    old_end = @tail
    current_node = @head #1
    next_node = current_node.next #2
    current_node.next = nil #1 -> nil

    #loop

    node_after = next_node.next  #3
    until node_after.next == @tail
      #p current_node.word, next_node.word, node_after.word
      puts "inside loop"
      next_node.next = current_node #2 -> 1, 3->2

      current_node = next_node #2, 3
      next_node = node_after #3, 4
      node_after = next_node.next #4, 5
    end
    puts "outside loop"
    #p current_node.word, next_node.word
    next_node.next = current_node #4->3

    node_after.next = next_node #5-> 4
    p @tail, @head
    @tail = old_start
    @head = old_end
    p @tail, @head
  end

  def prints
    current_node = @head
    until current_node.nil?
      puts "Found word #{current_node.word} with definition #{current_node.definition}"
      current_node = current_node.next
    end
  end

end

test = LinkedList.new

test.add_node("a", "a")
test.add_node("b", "b")
test.add_node("c", "c")
test.add_node("d", "d")
test.add_node("e", "e")
test.prints
test.reverse
puts "after reverse"
# test.read_node(4)
test.prints