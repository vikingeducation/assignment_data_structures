CJ Virtocio &:amp; Johnny Steenbergen

# assignment_data_structures
Buckets and buckets of data!

Big-O Notation

1. Accessing an item by index in an array: O(1)
   Calculates index by adding index * size of data type to the first reference in memory.

2. Unshifting a new item into the beginning of an array: O(n)
   Need to create an entirely new array to store the new element + the old array.  Done so by running through a new array and setting it equal to that.
3. Pushing an item onto the end of an array: O(n)
   Need to create an entirely new array to store the the old array + new element.  Done so by running through a new array and setting it equal to that.
4. Upcasing a String: O(n)
   Have to go through the entire array and write the new captilized letter into that array position.
5. Reverse a String: O(n)
   To create a new string that is the reverse.  Would need to run through the entire array of chars.  Need to place the last char of old array first in the new array.  Go through every element.
6. The Enumerable#each method: O(n)
   Each element of data structure is accessed.  The limit of n grows linearly with size of n.
7. The Enumerable#include? method: O(n)
   Each elemetn of data structured is accessed.  If the last element of structure happens to be the match or there is no match, then the entire array is gone through.
8. Finding the max of an array: O(n)
   The first element is compared with all the elements after it in the array.  If new maximum, then max starts at the new maximum, and compares all elements after new maximum. This continues until reaching end of array.
9. Splitting a String: O(n)
   A string is an array of chars.  The array is "cut" in half.  The first half is estblashed as new array as is the second half. Will have n total operations.
10.Inserting a value to a Hash: O(1)
   Akin to adding a new node into a linked list. Will reset the nodes to point to the new nodes very quickly.
11.Retrieving the keys of a Hash ({ foo: "bar" }.keys): O(n)

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)
