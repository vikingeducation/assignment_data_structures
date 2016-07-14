# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)


Dylan Lynch and David Jiang

  -----Warm-up Big O Questions-----
Q: Accessing an item by index in an array
A: O(1)- Because reading an item is independent from array size.

Q: Unshifting a new item into the beginning of an array
A: O(n)- Because you have to create an entire new array excluding the first element.

Q: Pushing an item onto the end of an array
A:O(n)- Because you have to create a new array with the new element included.

Q: Upcasing a String
A: O(n)- Because you have to update each char and capitalize it.

Q: Reversing a String
A: O(n)- Access each element starting from the last and create a new string starting from the original last element and ending at the original first element.

Q: The Enumerable#each method
A: O(n)- Accessing each element and manipulating it accordingly, creating a new object.

Q: The Enumerable#include? method
A: O(n)- Need to go through the entire data structure, as a worst case scenerio, if element is not present or present at the last index.

Q: Finding the max of an array
A:O(n)- Need to go through the entire data structure to find the maximum value.

Q: splitting a String
A: O(n)- Accessing through each char of string to push it into a new array.

Q: Inserting a value to a Hash
A: O(1)- Does not matter how big/small the hash is because the pointer is located at the end of a linked list and will insert the value next.

Q: Retrieving the keys of a Hash ({ foo: "bar" }.keys)
A: O(n) - Need to go through each key and add it to the keys array











