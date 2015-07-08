
require_relative 'linked_list.rb'


l = LinkedList.new

l.add_node('A', 'Definition for A')
l.add_node('B', 'Definition for B')
l.add_node('C', 'Definition for C')
l.add_node('D', 'Definition for D')
l.add_node('E', 'Definition for E')


l.reverse
l.print_list

l.find_node(4)

# l.insert_node(6, 'X', 'Definition for E') #should raise error
l.insert_node(4, 'Y', 'Definition for Y') #should add to end
l.insert_node(2, 'Z', 'Definition for Z') #should insert after C
l.print_list