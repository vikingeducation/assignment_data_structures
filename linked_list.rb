# nodes(Structs?)
  # data, pointer

# to access specific data
  # start at first node
  # crawl using pointers until
    # node data == input data

# to add a node(data, index)
  # state big-0 time
  # crawl until reached index
  # point previous node to input
  # point input to next node

# to remove a node(index || data)
  # crawl until reached index || data
  # point previous data to the next data
  # set pointer to nil

# to update a node(index, new_data)
  # crawl until reached index
  # set data to new_data

# to reverse the list
  # state big-0 time
  # crawl to end
  # build new linked list, adding last node to start
  # delete last node
  # until list is empty  
    # crawl to end
    # add to new list
    # delete....

  #loop
    # crawl until pointer is nil or the next node points to the current node
    # if pointer points to previous_node
      # current_node = previous_node
      # current points to double_previous
    # point this node to previous

Node = Struct.new(:data, :pointer)
class LinkedList

end