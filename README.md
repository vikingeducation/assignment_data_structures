Luke/Adrian

# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)


1. O(1) We know the reference address of the memory that stores the array values so it takes a singular step to lookup an item.  The runtime is independent of the array size.


2.  O(n)  Low levels are fix-sized and so to unshift an item we have a to create a new array of the old array's size(n) + 1 is created


3.  O(n)  Low levels are fix-sized and so to push an item we have a to create a new array of the old array's size(n) + 1 is created


4. O(n) The nth index of an array of characters in a string would be located at the reference address of the first element plus n bytes, and you have to access each byte to upcase it

5. O(n)  You push each letter(O(n), 1 byte each char) onto a stack and then pop each element(O(n)) off the stack which results in a reversed string.


6.  O(n)  The each method traverses the Enumerable object of size n one time

7.  O(n) The include? method traverses the Enumerable object of size n one time

8.  O(n) The max method traverses the Enumerable object of size n one time