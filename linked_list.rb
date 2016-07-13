Node = Struct.new :data, :next


class LinkedList

attr_reader :head, :last

def initialize(first=nil)
  @head = first
  @last = first
end

def add_first_node(data)
  @head = Node.new(data, nil)
  @last = @head
end


def read_node(index)
end

def add_node(data)
  if @head.nil?
  add_first_node
  else
  @last.next = Node.new(data, nil)
  @last = @last.next
  end
end

def insert_node(data, index)
  holder = @head
  (index - 1).times do
    holder = holder.next
  end
  holder = Node.new(data, holder)
end

  def reverse

  end
end
