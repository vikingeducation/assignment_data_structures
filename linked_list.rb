Node = Struct.new(:word, :definition, :next)

class LinkedList
  attr_reader :head

  def initialize(first_node = nil)
    raise "Please only enter nodes an an argument" unless first_node.is_a?(Node) ||
      first_node.nil?
      @head = first_node
      @tail = first_node
      @length = 0
      @counter = 0
      end
  end


end
