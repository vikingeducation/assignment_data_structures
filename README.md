# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)


Accessing an item by index in an array
  O(1) because every element has the same number of bytes. 
  Starting place + byte_per_element * index.

Unshifting a new item into the beginning of an array
  There may not be space before start of array, so a whole new array must be created.
  O(n) where n increases with the size of the array be recreated.

Pushing an item onto the end of an array
  There may not be space after end of array, so a whole new array must be created.
  O(n) where n increases with the size of the array be recreated.

Upcasing a String
  Must iterate over every character.
  O(n) where n increases with the length of the string.

Reversing a String
  Must iterate over every character.
  Uses a stack to store characters backwards.
  O(2n), reduced to O(n) where n increases with the length of the string.

The Enumerable#each method
  Must iterate over every element.
  Assuming the block passsed in is a constant operation.
  O(n) where n increases with the number of elements.

The Enumerable#include? method
  If implemented using iteration: O(n) where n icreases with the number of elements.
  If implemented using binary search: O(log n) where n icreases linearly as the number of elements increases polynomially.

Finding the max of an array
  Assume array is not sorted.
  Must iterate through entire array.
  O(n) where n increases with the length of the array.

Splitting a String
  Count the length of the string and create an empty array of that length.
  Iterate over every element and insert it into the array.
  O(n) where n increases with the length of the string.


Inserting a value to a Hash
  

Retrieving the keys of a Hash ({ foo: "bar" }.keys)



Completed by Christian Carey and Catherine Kwak