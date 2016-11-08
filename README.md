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

A: O(n) as we must iterate through each character in order to find the given
   delimiter to split on

10. Inserting a value to a Hash

  1) O(1) - determine hash value for key

  2) O(1) - locate index - index_number * memory_per_element

  3) O(n) - traverse linked list

  4) O(1) - mutate linked list by adding new node

11. Retrieving the keys of a Hash ({ foo: "bar" }.keys)

  O(n^2) - iterate through each node in linked list at each array index

  array.each do |linked_list|
    linked_list.each
  end
