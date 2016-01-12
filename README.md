# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

Kit, Andrew, & Josh



1.  Accessing an item by index in an array

O(1)

Lookup involves a simple math operation, which multiplies the size of the datatype by the index, in order to get the right location in memory. This will always take a single multiplication operation, which is constant, regardless of the size of the array.

2.  Unshifting a new item into the beginning of an array

O(n)

Because primitive arrays have static size, adding a new a item requires the creation of a new primitive array in memory with the new size. The computer must traverse the old array (n times) in order to move the data to the new array.

3.  Pushing an item onto the end of an array

O(n)

Same as above, except the new item will be added to the end of the new array.


4.  Upcasing a String

O(n)

Becase a string is an array of characters, the upcase function must traverse the length of the array, upcasing each individual character.

5.  Reversing a String

O(n)

Reverse function must iterate through at least half the size of the character array, however, the denominator is a constant and will be discarded and thus the Big O notation will be n. However, it is always possible to write a terrible Reverse algorthim which could be O(n2).


6.  The Enumerable#each method

O(n)

Each simply iterates through each item in the array, which will take longer if the array is longer. Duh.

7.  The Enumerable#include? method

O(n)

Because Big O notation is the worst case, and the worst case is that the value of interest is at the end of the array, #include follows the same rules as #each.


8.  Finding the max of an array

O(n)

There is some additional overhead of a stored max value, and a comparison between the current value and the stored max value, however, such constants become insiginificant as we approach infinity. (same reasoning as #each)


9.  splitting a String

O(n)

String#split must iterate through each substring in the string, checking against the supplied delimiter, and creating new strings and storing them in a new array.


10. Inserting a value to a Hash

O(1)

Assuming that the hash is well structured, so that the linked list lengths are balanced between buckets, the array length lookup is O(1) and the linked list insertion is O(1), so the Big O notation will be O(1) overall as well.

11. Retrieving the keys of a Hash ({ foo: "bar" }.keys)

O(n)

The Hash#keys method must iterate through each key and push them onto the return array.
