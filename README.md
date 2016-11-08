<b>Pramod Jacob</b>
<b>Kenny Kottenstette</b>

# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

Determine the Big O of the following (and ideally explain briefly why):

1. Accessing an item by index in an array

Constant time O(1). Since arrays are rigid and occupy a set amount of space in memory, only an index value is required to access as item. This is done with a quick operation (first_element + index).

2. Unshifting a new item into the beginning of an array

Linear time O(n). Adding an element to an array requires rebuilding it at a different location in memory.  

3. Pushing an item onto the end of an array

Linear time O(n). Adding an element to an array requires rebuilding it at a different location in memory.

4. Upcasing a String

Linear time O(n). Upcasing a string requires traversing it at least once. 

5. Reversing a String

Linear time O(n). String needs to be traversed once (in reverse) in order to build a new reversed string. (Polynomial time?)
 
6. The Enumerable#each method

Linear time O(n). Array needs to be traversed only once while using the each method.

7. The Enumerable#include? method

Linear time O(n). Array needs to be traversed only once to find include?'s argument. (Constant time if value is early in array?)

8. Finding the max of an array
Linear time O(n) - traverses one through the array


9. Splitting a String
Linear time O(n)


10. Inserting a value to a Hash
Contstant Time O(1) - Values can be inserted quickly if the key is known and it points to a linked list.

11. Retrieving the keys of a Hash ({ foo: "bar" }.keys)
Linear time O(n) - Requires traversing all the keys in the hash table.