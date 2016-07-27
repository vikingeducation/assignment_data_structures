# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

Joe Bernardi


Determine the Big O of the following (and ideally explain briefly why):

1.  Accessing an item by index in an array
	- O(1) - the computer doesn't need to check every value to locate the item in the array. It's locating the index with data fed into a formula.

2.  Unshifting a new item into the beginning of an array
	- O(n) - inserting a value creates the need to rebuild the entire array since open memory at the beginning is not guaranteed

3.  Pushing an item onto the end of an array
	- O(n) - same concept as inserting an element at the beginning, space at the end of the array may not be empty and the array must be rebuilt

4.  Upcasing a String
	- O(1) - we are changing the values (upcasing) each letter in the string which which requires us to find them which is O(1)

5.  Reversing a String
	- O(n) - you would have to create a new array to hold the new string, creating a new array is O(n)

6.  The Enumerable#each method
	- O(n) - it is required to go through every item in this case and the size of the input will determine the time taken

7.  The Enumerable#include? method
	- O(n) - like #each, every item will be checked and therefore time will be relative to input

8.  Finding the max of an array
	- O(n) - every item must be checked in determining max

9.  Splitting a String
	- O(n) - the array created will be dependent on the size of the string

10. Inserting a value to a Hash
	- O(1) - like accessing an array by index, finding the value and adding it doesn't require rebuilding the hash


11. Retrieving the keys of a Hash ({ foo: "bar" }.keys)
	- O(n) - in order to retrieve the keys, every key will need to be evaluated before sent back to the user
