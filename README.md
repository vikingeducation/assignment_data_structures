# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

Tingting Wang

Determine the Big O of the following (and ideally explain briefly why):

Accessing an item by index in an array
  O(1); The process locating the correct position in memory doesn't change or become more intensive as the size of the array changes.
Unshifting a new item into the beginning of an array
  O(n); involves rebuilding entire array because indexes of other values have also changed
Pushing an item onto the end of an array
  O(n); also involves rebuilding because array must find new place in memory to accomodate added memory of new value
Upcasing a String
  O(n); analogous to tranversing and updating all values in an array
Reversing a String
  O(n); process involves traversing through all values of the string, therefore dependent on size of structure
The Enumerable#each method
  O(n); iterations increase as elements increase
The Enumerable#include? method
  O(n)
Finding the max of an array
  O(n)
splitting a String
  O(n)
Inserting a value to a Hash
  O(1)
Retrieving the keys of a Hash ({ foo: "bar" }.keys)
  O(1)