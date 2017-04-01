# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

Worked on by [Roy Chen](https://github.com/roychen25)

## Warmup: BIG O
Determine the Big O of the following (and ideally explain briefly why):

### Accessing an item by index in an array
O(1). We simply need to calculate the memory position of the item we want to access, based on the starting position of the array, the index, and the size of each element in the array. Once we have that, we can access the item in the array in constant time.

### Unshifting a new item into the beginning of an array
O(n). The array has to be re-created to allow the new item to be inserted at the beginning, and all existing items need to be shifted.

### Pushing an item onto the end of an array
O(n). The array has to be re-created so that there's space for the new item to be appended.

### Upcasing a String
O(n). We need to traverse through each character in the string, converting lowercase letters to uppercase.

### Reversing a String
O(n). Again, we need to traverse through each character in the string.

### The Enumerable#each method
O(n). #each iterates through each item in the collection.

### The Enumerable#include? method
O(n). #include? also has to iterate through each item in the collection to see if it exists.

### Finding the max of an array
O(n). We need to traverse the whole array to be sure we've found the maximum value.

### Splitting a String
O(n). Assuming the split function doesn't know the length of the input string beforehand, it would need to traverse the whole string, splitting at each character found.

### Inserting a value to a Hash
O(1). Hashes average constant time for all operations.

### Retrieving the keys of a Hash ({ foo: "bar" }.keys)
O(1). The keys of a hash are essentially the inputs to the hash function of a hash table, and would likely be stored in an array. We can simply retrieve the whole array in one go.
