require_relative "node"

class LinkedList
  attr_accessor :head, :last, :tail
  def initalize()
    @head = nil
    @last = nil
  end

  def add_node(node)
  end

  def add_node_with_index(node, index)

  end

  def access(index)
    #should retrun the content of the node
  end  

  def crawl
    current_node = @head
    what_index = 0
    while current_node.pointer != nil
      what_index += 1
      current_node = current_node.pointer 
    end
    #finds index of a node if given search terms
  end
end

#Its going to have a head node
#it can add a node. 
##it can add the node at the begining (default)
##it can add the node at a specified point
#it can delete values
##it crawls to the value and removes it, fixing references
#it will have a method reverse to reverse the list. 
#make big O notes
#has a last node

#add node
#start at head
#crawl 