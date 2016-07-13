# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)


#Warmup

1. Accessing an item by index in an array
  -Constant time. The array is indexed and lookup is independent of the size of the array.

2. Unshifting a new item into the beginning of an array
  -N time. You have to rebuild the entire array.

3. Pushing an item onto the end of an array
  -N time or constant time. Depends on whether there is allocated memory at the end of the array (and the user knows where the end of the array is). If end is unknown, lookup time is N.

4. Upcasing a String
  -N time. Would go through each member of the string and preform a constant time function (upcasing current letter).

5. Reversing a String
  -N time. Would go through first string (N time) and build a new string (N time).

6. The Enumerable#each method
  -N time. Goes through 'each' item of a given object.

7. The Enumerable#include? method
  -N time. Goes through each member and preforms a comparison function (in constant time).

8. Finding the max of an array
  -N time. Sets current to max then compares to next. If next is max, sets it to new max, etc...

9. splitting a String
  -N time. Goes through each member of string and compares (n time), then builds new array with non-matching items (n time).

10. Inserting a value to a Hash
  -Constant time or N time. Constant time if linked list hash (and the array is already completely set up). N time if array hash (inserting into an array is N time).    

11. Retrieving the keys of a Hash ({ foo: "bar" }.keys)
  -N time. Looks through each member of the hash and forms a new array.
