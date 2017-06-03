Node = Struct.new(:word, :definition, :link)

class Linked
  def initialize
    @head = nil
    @tail = nil
  end
  def add_node(word, definition)
    if @tail == nil
      @head = Node.new(word, definition, nil)
      @tail = @head
    else
      @tail.link = Node.new(word,definition,nil)
      @tail = @tail.link
    end
  end

  def find_node(i=0,current_node=@head,index)
    while i < index do
      current_node = current_node.link
      i += 1
    end
    puts "It took me #{i+1} steps to reach the node"
    current_node
    # O(n)
  end

  def insert_node(index,node)
    father = find_node(index)
    child = father.link
    node.link = child
    father.link = node
  end

  def reverse(current_node=@head,prev_node=nil)
    # O(2) as it goes through the linked list twice
    require_relative 'stack.rb'
    stack = Stack.new
    while current_node != nil
      stack.push(current_node)
      current_node = current_node.link
    end

    @tail = nil
    stack.length.times do
      n = stack.pop
      add_node(n.word, n.definition)
    end

  end

  def render(str="", node=@head)
    node == nil ? str : render(str += " > #{show_node(node)}",
                               node =node.link)
  end

  def find_definition(node=@head,word)
    if node == nil
      false
    elsif node.word == word
      node.definition
    else
      find_definition(node.link, word)
    end
  end


  def show_node(node)
    "#{node.word}: #{node.definition}"
  end

end

# list = Linked.new
# list.add_node("pepe","un niño de 12 años que juego al ping pong")
# list.add_node("juan","un niño muy pequeño que le gusta jugar")
# list.add_node("fran","un niño muy grande que baila")
#
# puts "We found a node at pos 0 #{list.show_node(list.find_node(0))}"
# puts "We found a node at pos 1 #{list.show_node(list.find_node(1))}"
# puts "We found a node at pos 2 #{list.show_node(list.find_node(2))}"
#
# new_node = Node.new("Peter", "is a fine young chap", nil)
#
# list.insert_node(1, new_node)
#
# puts "We found a node at pos 0 #{list.show_node(list.find_node(0))}"
# puts "We found a node at pos 1 #{list.show_node(list.find_node(1))}"
# puts "We found a node at pos 2 #{list.show_node(list.find_node(2))}"
# puts "We found a node at pos 3 #{list.show_node(list.find_node(3))}"
#
# list.reverse
#
# puts "\nReversed\n"
#
# puts "We found a node at pos 0 #{list.show_node(list.find_node(0))}"
# puts "We found a node at pos 1 #{list.show_node(list.find_node(1))}"
# puts "We found a node at pos 2 #{list.show_node(list.find_node(2))}"
