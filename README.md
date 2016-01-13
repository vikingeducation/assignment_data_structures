# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

John and Samantha

1. Accessing an item by index in an array - 

O(1) - you know the index of the array so the item in memory is just a known offset from the beginning of the array.

2. Unshifting a new item into the beginning of an array

O(n) - every element of the array must be copied and moved one slot to the right. (Must delete the array and create a new one)

3. Pushing an item onto the end of an array

O(1) - we just add an item at the end of the array which requires no copying of any prior elements of the array.

[O(n)-If you assume that you have to create a new array b/c you're out of space]

4. Upcasing a String 

O(n) - have to iterate through every character of the string.

5. Reversing a String 

O(n) - have to iterate through every character of the string.  All other operations are constant.

6. The Enumerable#each method

O(n) as a minimum, assuming that the block is a constant time operation.

7. The Enumerable#include? method

O(n).  Any include? that returns false will traverse through the entire array, and often if it returns true will traverse through a significant part of it.

8. Finding the max of an array

O(n)

9. splitting a String

O(n), need to traverse the String to find the delimiter characters.

10. insert a value to a hash.

O(1) - This is a combination of three things

1. evaluate the hash fn.
2. go the correct hash array slot,
3. find the end of the associated linked list.

each of these are constant operations, if we can assume that either a. we have a link to the end of every linked list of the hash table or b. every associated linked list has at most k elements for some constant k. 

(Note-But that constant may be significantly large)

11. Retrieving the keys of a Hash

O(n) at a minimum.  Should be O(n) in the general case, the exception would be if the hash is embedded in an array significantly larger than the length of the Hash, in which case, it would be the length of that array.




