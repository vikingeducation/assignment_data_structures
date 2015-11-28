# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

by Sia Karamalegos

## Warmup: Big O Questions

Determine the Big O of the following (and ideally explain briefly why):

1. Accessing an item by index in an array - O(1) because accessing by index requires simple math that is independent of array size.

2. Unshifting a new item into the beginning of an array - O(n) because an entirely new array must be built just to insert one value.

3. Pushing an item onto the end of an array - O(n) because arrays use continues chunks of memory, so just like #2, an entirely new array must be built.

4. Upcasing a String - O(n) because strings work a bit like arrays so changing every single character would be approximated one operation per character.

5. Reversing a String - I think this would be O(2n), or approximately O(n) because first you would have to read a value at the negative index then push it into a new array, though I wonder if it starts looking more like a polynomial because you have to rebuild that string for each iteration of the loop.

6. The Enumerable#each method - O(n) though slightly worse since you have to write values each iteration.

7. The Enumerable#include? method - O(n) though on average it is probably better because you don't always need to iterate through the entire object before you hit a true scenario.

8. Finding the max of an array - O(n) because looping through every value in the array, comparing to the current max.

9. splitting a String - O(n) because you must iterate over every character and match to the splitting argument (then also create the new array with strings)

10. Inserting a value to a Hash - O(1) because hashes are not stored as one continuous chunk of memory like an array

11. Retrieving the keys of a Hash ({ foo: "bar" }.keys) - I think this would be O(n) since you would have to read in that many values from the hash.
