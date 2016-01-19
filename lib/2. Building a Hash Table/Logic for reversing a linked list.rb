=begin
  Logic for reversing a linked list

  @head 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 ->8 -> 9 -> 10 @tail

  # You can only start at the head

  1. make head point to nil and move onto the next one (Done)
  2. make 2 point to 1 and move onto the next one
  3. make 3 point to 2 and move onto the next one
  4. so on and so on....
  5. Make tail point to the previous one but then don't move onto the next one.
  6. @head,@tail = @tail,@head (Done)

If I build with a modulo with an array I could save space


=end

# Couldn't you just save all the items into an array and redirect them to each other! FUCK

def reverse
  current_node = @head
  nodes = []
  loop do
    nodes << current_node
    break if current_node.next.nil?
    current_node.next
  end

  index = nodes.size-1
  while index > 0
    nodes[index].next = nodes[index-1]
    index -= 1
  end
  nodes[index].next = nil

  @head,@tail = @tail,@head
end



