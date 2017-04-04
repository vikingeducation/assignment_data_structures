# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)
Ann Allan

1) Accessing an item by index in an array
    - Constant time O(1) because regardless of how long the array is, there is only a simple computation of the index and the starting point to go right to any given index and access its contents.

2) Unshifting a new item into the beginning of an array
    - Linear time O(n) because after finding the index to delete the entire array will need to be rebuilt to avoid gaps.

3) Pushing an item onto the end of an array
    -Linear time O(n) because after finding the last index  the entire array will need to be rebuilt to have enough contiguous memory space. ( O(1)) if the array is dynamic and the addition will not exceed current capacity.

4) Upcasing a String
    - Linear time O(n) because of the need to iterate through each character in the string.

5) Reversing a String
    -Linear time O(n) because each element of the string will have to be pushed on to a stack and pulled off again in reverse order.

6) The Enumerable#each method
    -Linear time O(n) because each element of the array will have to be accessed.

7) The Enumerable#include? method
    -Linear time O(n) because in the worst case scenario the item is not included in the list and each element in the list would have to accessed to be compared to the value.

8) Finding the max of an array
    - Linear time O(n) because each value in the array will need to be accessed to be compared to the current largest value.

9) Splitting a String
    -Linear time O(n) because each element of the string will have to be accessed to be compared to the element upon which to split the string.

10) Inserting a value to a Hash
    - Constant time O(1) assuming a good design because the value is passed to the hash function and assigned to a slot in the hash table which has the constant time of accessing an array and may only have a small linked list to traverse to avoid collisions. O(n) for a poor design of too many or too few buckets.

11) Retrieving the keys of a Hash ({ foo: "bar" }.keys)
    - Constant time O(1) because it is just a matter of passing the value through the hash function and itertating through up to 6 linked list nodes.
