# assignment_data_structures
Buckets and buckets of data!

Andrea A

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

** Accessing an item by index in an array
O(1) - accessing the item in the array directly is at constant time. We have pointer arithmetic for direct addressing and thus direct access.

** Unshifting a new item into the beginning of an array
O(n) - linear time as you have to take the 1st item from the array 
and then rebuild the array to resort it

** Pushing an item onto the end of an array 
O(n) - linear time 
Find the end of the array and add the item there if there is space or you may have to create a new array to accomodate the space

** Upcasing a String
O(n) - linear time , as you have to change each element in the string one by one

** Reversing a String
O(n) - linear time, as you have to find the end of the array and pick each element, store it one by one.

** The Enumerable#each method
O(n) - linear time
As you are applying the same operation to each element in the collection so you have to go through the full length of the collection. Time depends on the size of the array since it goes through each item.

** The Enumerable#include? method
O(n) - linear time, as you have to go through the whole collection to decide whether any of the individual elements match a given condition. Time depends on the size of the array since it goes through each item.

** Finding the max of an array
O(n), linear time, as you have to go through the whole collection and keep track of what the highest item is so far before returning it if unsorted.

O(1) constant time if the array is sorted because you will know the address you wil know where the biggest element is


** splitting a String
O(n) - linear time, you have to go through each element in the string and store it.

** Inserting a value to a Hash
O(1) is best cas but depends on the way the hash table is implemented

Worst case in o(n)

** Retrieving the keys of a Hash ({ foo: "bar" }.keys)
O(n), as you have to retrieve each key to be able to retrieve them as a collection