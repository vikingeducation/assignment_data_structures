# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

Richard Bell

1) O(1) - an array has fixed elements and access by index is index * element_size which is basic operation not proportional to the number of elements

2) depends on implementation.  O(1) for a linked list.  O(n) for a static array that requires the migration of up to N elements as a new first element is inserted and all others move on down the line

3) if tracking the last element in the array and there is room remaining then O(1).  If last element not tracked requires traversal so is O(n).  

4) O(n) as requires traversal

5) depends on implementation.  a doubly linked list could just flip first and last node and traverse in opposite direction so O(1), but not space efficient for a string to have doubly linked list.  String in an array would be O(n) as requires traversal likely implemented as a copy to a new array.  

6) O(n) - requires traversal

7) O(n) - requires traversal unless sorted and somewhat dependent on implementation of underlying data structure.  Could be O(log n) if done as sorted tree

8) O(n) requires traversal

9) O(1) fixed byte operation

10) O(1) - constant time hash calc to array to a linked list that should track last element in list as part of implementation to avoid traversal.  If requires unique, would then require traversal of linked list and that would move towards O(n) and be dependent on depth of list vs the hash table array

11) O(1) - array traversal, but fixed
