Assignment completed by [Stephen Mayeux](http://stephenmayeux.com)

# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

My responses to the warmup questions.

*Determine the Big O of the following (and ideally explain briefly why):*

1. Accessing an item by index in an array

O(1) -- The size of the array does not matter because of random access.

2. Unshifting a new item into the beginning of an array

O(n) -- All of the elements have to move

3. Pushing an item onto the end of an array

O(1) -- Array size does not matter. We are simply adding to the end of the array.

4. Upcasing a String

O(n) -- If string has multiple words, then it needs to check each character.

5. Reversing a String

O(n) -- Size mattes. It has to read each character and then move them.

6. The Enumerable#each method

O(n) -- Has to traverse each item. Size matters.

7. The Enumerable#include? method

O(n) -- Has to check the entire array to see if it includes an item

8. Finding the max of an array

O(n) -- Have to read the entire array to find largest item

9. splitting a String

O(n) -- If takes optional argument, it has to traverse entire string to know where to split.

10. Inserting a value to a Hash

O(1) -- Does not matter about the size of the hash.

11. Retrieving the keys of a Hash ({ foo: "bar" }.keys)

O(n) -- Have to search through entire hash to find right key
