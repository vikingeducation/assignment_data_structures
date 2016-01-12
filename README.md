# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

Kelsey and Deepa

Accessing an item by index in an array: O(1), because you can access an index by using a formula to find the position of the element in the array.

Unshifting a new item into the beginning of an array: O(n), because you have to delete the array and create a new one.

Pushing an item onto the end of an array: O(n), because you have to delete the array and create a new one.

Upcasing a string: O(n), because you have to access and change every element of the string.

Reversing a string: O(n), because you have to access each element of the string and assign it a new position.

Enumerable each method: O(n), because you're iterating through each element of the list.

Enumerable include? method: O(n), because you don't know the index you're looking for, so you have to search through the whole object.

Finding the max of an array: O(n), because you have to go through each element to find which is the greatest.

Splitting a string: O(n), because if you're splitting a string by a given character, you have to first traverse the string and find all instances of that character. If you're splitting by an empty string, you still have to access every character in the string and insert it into an array.

Inserting a value into a Hash: O(1), because finding the "bucket" in the array takes O(1) time, and then adding an item to the associated linked list also takes O(1) time because you only have to modify two nodes.

Retrieving all the keys of a hash: O(n), because you have to access every key to retrieve it.