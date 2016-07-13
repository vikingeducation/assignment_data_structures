Luke/Adrian

# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)


1. Accessing an item by index in an array O(1) 
    We know the reference address of the memory that stores the array values so it takes a singular step to lookup an item.  
    The runtime is independent of the array size.

2. Unshifting a new item into the beginning of an array O(n)  
    Low levels are fix-sized and so to unshift an item we have a to create a new array of the old array's size(n) + 1 is created

3. Pushing an item onto the end of an array O(n)  

  Low levels are fix-sized and so to push an item we have a to create a new array of the old array's size(n) + 1 is created

4. Upcasing a string O(n) 
    
    The nth index of an array of characters in a string would be located at the reference address of the first element plus n bytes, and you have 
    to access each byte to upcase it

5. Reversing a string O(n)  

    You push each letter(O(n), 1 byte each char) onto a stack and then pop each element(O(n)) off the stack which results in a reversed string.

6.  Enumerable#each O(n)  

    The each method traverses the Enumerable object of size n one time

7.  Enumerable#include? O(n) 

    The include? method traverses the Enumerable object of size n one time

8.  Finding the max of an array O(n) 

    The max method traverses the Enumerable object of size n one time

9.  splitting a String O(n)

    The string is traversed to find occurences of the split pattern O(n) and returns an array of size n.

10. Ineserting a value to a Hash O(1) 

    Passing the key to the hash function and jumping to the index of the hash table O(1), then performing a linked-list insertion in the correct part 
    of the linked list O(1), which is independent on the data size.

11. Retrieving the keys of a Hash O(n)

    n number of keys of the hash are traversed  in order to return an array of size n.











