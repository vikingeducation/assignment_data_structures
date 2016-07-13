Node = Struct.new(:word, :definition, :next)


class LinkedList

  attr_reader :head, :last

  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end

  def add_first_node(word, definition)
    @last = @head = Node.new(word, definition, nil)
  end

  def add_node(word, definition)

    if @head.nil?
      add_first_node(word,definition) 
    else
      new_word = Node.new(word, definition)
      @last.next = new_word
      @last = new_word
    end

  end







end