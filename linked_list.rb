Node.Struct.new(:word, :meaning, :next)
class LinkedLists
  attr_accessor :head, :last
  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end
  def add_first_node(data)
    @head = Node.new(data, nil)
    @last = @head
  end
  #Add Node is Constant time
  def add_node(data)
    if @head.nil?
      add_first_node(data)
    else
      new_node = Node.new(data)
      @last.next = new_node
      @last = new_node
    end
  end
  def insert_node(index, data)
    find_node(index)
    inserted_node = Node.new(data)
    current.next = inserted_node
  end
  def find_node(index)
    counter = 0
    current_node = @head
    while counter < index
      current_node = current_node.next
      counter += 1
    end
    puts "Found node at index #{index} with value of #{current_node}."
    puts "Number of steps was #{counter}"
  end
  #Big O is Linear time O(n)
  def self.reverse
    @head = self.next
    self.next = previous
    if @head
      reverse(@head)
    else
      self
    end
  end
end
