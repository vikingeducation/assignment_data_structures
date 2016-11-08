# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

Completed by Jessica Gillan and Luke Schleicher

# Determine the Big O of the following:

1. Accessing and item by index in an array

  O(1) - constant because we find the starting address + the index of the item multiplied by the byte size of data

2. Unshifting a new item into the beginning of an array

  O(n) - we need to copy and move the entire array before adding a new item, so the time complexity will depend on the number of items in the array

3. Pushing an item onto the end of an array

  O(n) - we need to copy and move the entire array before adding a new item, so the time complexity will depend on the number of items in the array

4. Upcasing a String

  O(n) - we need to upcase every item in the string (which we are thinking of as an array), so the time complexity depends on the length of the string

5. Reversing a String

  O(2n) - we push off every letter in the string to a stack, then pop each item off the stack to create the reversed string. This requires 2 operations per letter

6. The Enumerable#each method

  O(n) - we go through each item, so the time complexity of "each" depends on the number of times we are iterating over

7. The Enumerable#include? method

  O(n) - worst case scenario, using the include method we will have to traverse the entire collection to determine whether it includes the argument(based on the length of the collection)

8. Finding the max of an array

  O(n) - assuming the array is unsorted, we have to check every item in the array to find out which item is the largest

9. Splitting a String

  O(n) - we need to convert each letter of the string into an item in an array, so the time complexity depends on "n"

10. Inserting a value to a Hash

  O(1) - assuming we have a balanced hash table, each of the operations are independent of the number of items (hash function, array traversal, linked list insertion)

11. Retrieving the keys of a Hash ({ foo: "bar" }.keys)

  O(n) - we go through each array of buckets, then traverse each linked list to track down all the keys, so the time complexity depends on "n"

