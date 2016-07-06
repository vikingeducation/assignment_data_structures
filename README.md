# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)
Big O
=====
1. Accessing an item by index in an array
  O(1) - We can access any index just by memory offset from the base address. Since, array is a continous chunk of memory.

2. Unshifting a new item into the beginning of an array
  O(n) - We need to allocate new memory and copy all the items from old array to the new array.

3. Pushing an item onto the end of an array
  O(n) - We need to  allocate new memory and copy all the items from old array to the new array.

4. Upcasing a String
  O(n) - We need to iterate over n charaters and change the ascii value of each.

5. Reversing a String
  O(n) - We can iterate upto n/2 characters and swap the first half char with the 2nd half. Still it grows linearly with number of characters.

6. The Enumerable#each method
  O(n) - itererates over each element once.

7. The Enumerable#include? method
  O(n) - iterates over each element and compares element. In the Worstcase, element might not be present and we had to look at all the elements.

8. Finding the max of an array
  O(n) - We need to look at all the elements atleast once, to get the max of an array

9. splitting a String
  O(n) - We need to iterate atleast once and copy elements into a new array

10. Inserting a value to a Hash
  O(1) - Assuming, the hash has a high load factor and no collisions, insertion is similar to adding element in an empty array

11. Retrieving the keys of a Hash ({ foo: "bar" }.keys)
  O(n) - Assuming, the hash has high load factor and less chaining, retrieving a key is O(1). Since, there are n keys, n * O(1) = O(n)