# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)


Felipe Suero 
Jonathan Popenuck

Questions!
Big O for:
1.) Accessing an item by index in an array
A: O(1), once you know the index, the operation that must be preformed is a simple mathematical adition to the base bit value, which means only two operations are ever needed, a summation and an access

2.) Unshifting a new item into the beginning of an array
A:O(n), In an non dynamic array, or a dynamic array at its edge, O(n), as the whole array must be rewritten in a new slot in memory, requiring iterating over the array. 

3.) Pushing an item onto the end of an array
A: O(n),See 2. 

4.) Upcasing a String
A: O(n), For our purposes an array is a string, since you have to iterate over every value, the operation will increase liniearly with the amount of data

5.) Reversing a String
A: O(n), you simply iterate to the last index, and then create a new array by iterating backwards. 

6.) The Enumerable#each method
A: O(n), you simply iterate over the array and perform a function, unless the function is in turn iterative, this is the same as iterating over the list by index.

7.) The Enumerable#include? method
A: O(n), iterates over each value and check if they meet a condition. Linear increase with data

8.) Finding the max of an array
A: O(n), see 7

9.) splitting a String
A: O(1), A string is an array, unless you split by certain input, in which case O(n), as you iterate over everything. 

10.) Inserting a value to a Hash 
A: O(1), first the key is hashed, and passed on to a bucket that contains a linked list, since the operation to access the bucket is based on an index, and the insrtion of the value does not displace the linked list, the operation always takes a fixed amount of time, assuming best case scenarios. If the insertion were required at a spot inside the linked list, it would be O(n)

11.) Retrieving the keys of a Hash ({ foo: "bar" }.keys)
A: O(n), you iterate over the array, unhash the keys, and return their values. 
#how does renaming keys affect hashes in ruby? Is the hash function reversible? 
