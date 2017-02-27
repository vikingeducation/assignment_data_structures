# - Build a linked list node that contains the word and its definition
# (and anything else you need) using a Struct (not a class). [ok]
# - Build a basic linked list class that allows you to:
#   1. Create the list [ok]
#   2. Read nodes at a particular index (add a printout which tracks the
#   crawler's progress or at least returns the number of steps). In the
#   comments, state the Big-O time of this operation.
#   3. Insert nodes at a particular index or, separately, at the end of
#   the list (so store a reference to the last node). In the comments,
#   state the Big-O time of this operation.
# - Build a method #reverse on your LinkedList class that will entirely
# flip the order of this list, so the "head" and the "tail" are swapped
# and all the links point in opposite directions.
# - In a comment above the method, explain how quickly it runs in Big O
# notation. Is it "in place" (you reused the existing nodes), or did you
# have to create new nodes to replace the old ones?

Node = Struct.new("Node", :first, :rest)

class LinkedList
  attr_accessor :child

  def initialize(child = Node.new)
    @child = child
  end

  def first
    child.first
  end

  def rest
    child.rest
  end

  def self.cons(f, r)
    Node.new(f, r)
  end

  def self.list_(*args)
    return nil if args.empty?
    self.cons(args[0], self.list_(*args[1..-1]))
  end

  def self.list(*args)
    LinkedList.new(self.list_(*args))
  end

  def append(val)
    lst, acc = self, []
    while lst != nil
      acc.push(lst.first)
      lst = lst.rest
    end
    LinkedList.list(*acc.push(val))
  end

  # O(n)
  def find(i)
    return self if i.zero?
    node = self
    i.times do |j|
      node = node.rest
    end
    node
  end

  # O(n)
  def reverse(acc = nil)
    lst, acc = self, nil
    while lst != nil
      f, r = lst.first, lst.rest
      acc = LinkedList.cons(f, acc)
      lst = lst.rest
    end
    LinkedList.new(acc)
  end

end
