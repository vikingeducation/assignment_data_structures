M# Morgan Martin and Chris Goodson's assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)


1) To access an item in an array: O(1) bc arrays can perform bit manipulation to access a particular index due to their fixed size

2) To unshift a new item into the beginning of an array: O(n) bc the time it takes to create a new array is proportional to the size of the array.

3) To push a new item onto the end of an array: O(n) bc there is no guarantee to be space at the end of the array. On average there may be, but not in the worst case.(O)

4) To upcase a string : O(n) bc you have to visit each element in the array.

5) To reverse a string : O(n) bc you have to traverse the array and then create another one.

6) For Enumerable#each : O(n) bc you have to to traverse the array.

7) For Enumberable#include? : O(n) bc you must traverse the entire array every time.

8) For finding the max of an array : O(n) bc you must check every value in the array.

9) For splitting a string : O(1) because we already know the index of where we want to split the string.

10) Insersting a value into a hash: O(n) because we are working linearly dependant on the size of the hash

11) Retrieving a keys of a hash: O(n) because we are going through the hash one after another
