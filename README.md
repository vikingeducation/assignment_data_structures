a fork by Matt and Alex

# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)


Determine the Big O of the following (and ideally explain briefly why):
    Accessing an item by index in an array
      O(1) - constant, because regardless of size, only one step is involved (simple multiplication/division)

    Unshifting a new item into the beginning of an array
      O(n), because a complete rebuild is required, involving a number of steps proportional to the size of the array

    Pushing an item onto the end of an array
      O(n), because a complete rebuild is required, involving a number of steps proportional to the size of the array

    Upcasing a String
      O(n), because you have to work one-by-one on string characters, upcasing each one

    Reversing a String
      O(n), because a new string is required, and you would have to move each character, so the steps are proportional to size

    The Enumerable#each method
      O(n), because steps are directly proportional to size of data

    The Enumerable#include? method
      O(n), because steps are directly proportional to size of data

    Finding the max of an array
      O(n), because steps are directly proportional to size of data

    splitting a String
      O(n), because steps are directly proportional to size of data

    Inserting a value to a Hash
      O(1), because you pair constant array indexing with constant linked-list insertion/deletions 

    Retrieving the keys of a Hash ({ foo: "bar" }.keys)
      O(n), because size of bucket array influences number of keys that need to be looked up


