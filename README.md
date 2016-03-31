# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

Jeremy Vermast

1- Accessing an item by index in an array
O(1) - it doesn't depend on the Array size

2- Unshifting a new item into the beginning of an array
O(n) - because have to move/copy all the elements

3- Pushing an item onto the end of an array
O(1) - doesnt depend on Array size

4- Upcasing a String
O(n) - Depends on the size of the string, read each char

5- Reversing a String
O(n) - Depends on the size of the string, read each char

6- The Enumerable#each method
O(n) - Depends on the size of the string, read each element

7- The Enumerable#include? method
O(n) - Have to check the whole array, the worse case being not include

8- Finding the max of an array
O(n) - Have to read the whole array to know

9- splitting a String
O(n) - Have to check the whole string, to know if have to split or not

10- Inserting a value to a Hash
O(1) - it doesn't depend on the size of the Hash, constant time

11- Retrieving the keys of a Hash ({ foo: "bar" }.keys)
O(n) - Have to go through the whole Hash to know all the keys