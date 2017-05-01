# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

### Sean Luckett

## Big O questions

### Big O of the following:
***Accessing an item by index in an array***

O(1) -- quick arithmetic leads to the memory address

***Unshifting a new item into the beginning of an array***

O(n) -- inserting element into array means recreating entire array

***Pushing an item onto the end of an array***
* O(1) if array has capacity because it it's the same as direct access
* O(n) if it doesn't: have to recreate array with new data

***Upcasing a String***

O(n) characters -- have to traverse string and change each character

***Reversing a String***

O(n) -- have to recreate string, character by character, in reverse

***The Enumerable#each method***

O(n) -- iterate through every member in the collection

***The Enumerable#include? method***

O(n) -- worse case is item is either last or not in collection at all.

***Finding the max of an array***

O(n) -- not sure which is max unless it's gone through entire collection

***spliting a String***

O(log(n)) -- longest string still only gets split in half. depends on language implementation of course.
If string length is necessary then, I'd say O(nlog(n)) as it hast to go through n characters
to determine length and then iterate through half of them, to split it.

***Inserting a value to a hash***

Depends on hash function and how the table is implemented. O(n)

***Retrieving the keys of a Hash***

O(n) Have to traverse every item stored in hash table
