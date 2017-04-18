Node = Struct.new(:word, :definition, :previous, :next)

# doubly linked list for dictionary
class Linked
  def initialize
    @first = nil
    @last = nil
    @current = nil
    @len = 0
  end

  def length
    @len
  end

  def search(word)
    traverse_count = 0
    @current = @first
    until @current.nil?
      traverse_count += 1
      if @current.word == word
        puts "Traversed #{traverse_count} nodes in list"
        return @current.definition
      end
      @current = @current.next
    end
    puts "Traversed #{traverse_count} nodes in list" 
    false
  end

  # O(1)
  def insert_end(word, definition)
    @first.nil? ? first_node(word, definition) : add_node(word, definition)
    @len += 1
  end

  # O(n) due to find traversal
  def insert_at(index, word, definition)
    return insert_end(word, definition) if index >= @len
    find(index)
    new_node = Node.new(word, definition, @current.previous, @current)
    @current.previous = new_node
    @current = new_node
    @first = new_node if index.zero?
    @len += 1
  end

  # O(n) due to find traversal
  def read(index)
    return puts "Index #{index} out of bounds" if index >= @len
    find(index)
    puts "At index #{index} the word is #{@current.word} and the definition is #{@current.definition}"
  end

  # this is O(n) since it traverses in place and flips pointers around
  def reverse
    @current = @first
    until @current.nil?
      previous_node = @current.previous
      next_node = @current.next
      @current.previous = next_node
      @current.next = previous_node
      @current = next_node
    end
    @current = @last
    @last = @first
    @first = @current
  end

  private

  def first_node(word, definition)
    @first = Node.new(word, definition, nil, nil)
    @last = @first
  end

  def add_node(word, definition)
    last_node = @last
    @last = Node.new(word, definition, last_node, nil)
    last_node.next = @last
  end

  def find(index)
    return @current = @last if index > (@len - 1)
    traverse_count = 0
    @current = @first
    until traverse_count == index
      @current = @current.next
      traverse_count += 1
    end
    puts "Traversed #{traverse_count} nodes"
    @current
  end
end
