# assignment_data_structures
Buckets and buckets of data!

Author : Behdad Analui

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

1 - Accessing an item by index in an array

	O(1) --> Because it's just a matter of calculating the address of ith element

2 - Unshifting a new item into the beginning of an array

	O(n) --> We have to reconstruct the array as the address of first elemet changes

3 - Pushing an item onto the end of an array

	O(1) --> If we have free space and no need to reconstruct, O(n) if array is fixed size and we have to reconstruct

4 - Upcasing a String

	O(n) --> We have to go through each element and change it to upcase

5 - Reversing a String

	O(n) --> We have to go through each element, push into some sort of stack and pop back so they will be in reverse order

6 - The Enumerable#each method

	O(n) * X --> Each will go through each item(hence O(n)) but if we are doing something other than O(1) inside enumerable then it gets multiplied

7 - The Enumerable#include? method

	O(n) --> As we have to go through all elements and see if it's included

8 - Finding the max of an array

	O(n) if array not sorted and O(1) if array sorted

9 - splitting a String

	O(n) as we have to go through each character and push into array

10 - Inserting a value to a Hash

	It really depends on the structure of hash but upper bound is O(n) if we have the longest linked list possible in the corresponding key index. The lower bound would be O(1)
11 - Retrieving the keys of a Hash ({ foo: "bar" }.keys)

	It really depends on the structure of hash but upper bound is O(n) if we have a big array of indices and very short linked list. The lower bound would be O(1) if it's the other way
