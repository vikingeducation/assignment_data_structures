# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)


Dexter Ford
Anthony Fuentes

BIG O NOTATION FOR:

1. Accessing an item by index in an array

A: O(1) because finding an index is a constant operation of index_number * memory_per_element.

2. Unshifting a new item into the beginning of an array

A: O(n) because we would have to create an entirely new array to include the element being added.

3. Pushing an item onto the end of an array

A: O(n) because we would have to create an entirely new array to include the element being added.

4. Upcasing a String

A: O(n) because we visit each character to alter its case sequentially. Time complexity is directly proportional to number of characters.

5. Reversing a String

A: O(n) because each character is "popped" off original string into new string.

6. The Enumerable#each method

A: O(n) because number of iterations is directly proportional to number of elements to be iterated.

7. The Enumerable#include? method

A: O(n) because in worst case scenario we are looking at every single element to see if a given element exists in the collection.

8. Finding the max of an array

A: O(n) because in worst case scenario we are looking at every single element to locate the maximum existing value.

9. splitting a String

A: 

Inserting a value to a Hash
Retrieving the keys of a Hash ({ foo: "bar" }.keys)
