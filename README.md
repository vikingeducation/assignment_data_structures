# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

Brent Guffens

Big O
=====

1. Accessing an item by index in an array

  Big O = O(1). Accesing an item by index in an array is a constant time operation. The math required to lookup an element is independent of the array's size.

2. Unshifting a new item into the beginning of an array

  Big O = O(n). Locating the beginning of an array is O(1), however, unshifting an item means that the array has to be recreated at another spot in memory. You need to start at the (new) beginning of the array, then iterate through every element, adding it to the next position in memory.

3. Pushing an item onto the end of an array

  Big O = O(n). Same as unshifting a new item. Array needs to be recreated at a different spot in memory.

4. Upcasing a String

  Big O = O(n). Needs to iterate over every character of the string.

5. Reversing a String

  Big O = O(n). Needs to iterate over every character of the string.

6. The Enumerable#each method

  Big O = O(n). Needs to iterate over every element of the array.

7. The Enumerable#include? method

  Big O = O(n). Needs to iterate over every element of the array.

8. Finding the max of an array
  
  Big O = O(n^2). For every element of the array, needs to check all other elements, so it's a nested iteration.

9. Splitting a string

  Big O = O(n). Iterates over every specified expression.

10. Inserting a value to a Hash
  
  Big O = O(1). Assuming we have a well-balanced hash table, we pair the constant array indexing/lookup with the nearly constant linked list insertion/deletion.

11. Retrieving the keys of a Hash

  Big O = O(n). Looping over a list.

  
