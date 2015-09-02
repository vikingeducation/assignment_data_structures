# assignment_data_structures
Buckets and buckets of data!

## Bideo Wego

### Determine the Big O of the following (and ideally explain briefly why):

1. Accessing an item by index in an array

	#### O(1)
	An indexed array item can be accessed in constant time.

	We know the starting point of the array in memory and it's indexes are stored in a row (contiguously). We also know the size of each index will be the size of the data type stored in the array (only 1 data type allowed). So we can take the starting point of the array in memory and add the result of the `index * sizeof(data_type)` to point directly to the index we want, without having to traverse the entire array.

1. Unshifting a new item into the beginning of an array

	#### O(n)
	Prepending an item to an array takes linear time.

	The number of array indexes cannot be altered once the array is created in memory e.g. it can only be decided before creation. This is due to the array indexes being stored contigiuously. There is no guarantee that free memory exists on either side of the stored array. This means a new array must be created to store the new item. This also means that in order for the new array to hold all the values of the old array, all the values of the old array must be read, one by one and stored into the new array. This equates to a time complexity of `n + 1`, however because 1 is a constant it can be ignored. So in the end the time complexity is O(n).

1. Pushing an item onto the end of an array

	#### O(n)
	Appending an item to an array takes linear time.

	Appending an item to the end of an array is effectively the same operation as appending it to the beginning. See above.

1. Upcasing a String

	#### O(n)
	Traversing a string takes linear time.

	A string is an array of `char` data types. Traversing an array and performing an operation on every item i.e. changing it to uppercase will take `operation_time * n`. This means the overall time grows at the same rate as the input length `n`. This is O(n).

1. Reversing a String

	#### O(n)
	Traversing a string takes linear time.

	Inorder to create a string with all the characters of the original string reversed, you must traverse the entire string exactly once from the end to the beginning (this assuming you know the length of the string). So the operation takes the same amount of time as the length of the string `n`.

1. The Enumerable#each method

	#### O(n)
	Traversing all the indexes of an array is linear time.

	The function name `each` is a dead give away. However, inorder to read each value in an array it must be traversed entirely from start to finish. This means the `each` function will take as long to execute as there are items in the array i.e. O(n).

1. The Enumerable#include? method

	#### O(n)
	Traversing an array takes linear time.

	#### Ω(1)
	The possibility of the first item being the searched item results in a constant time lookup.

	The worst case scenario is that the item either does not exist in the array or it is the last item. This means the entire array must be traversed and results in a time complexity of O(n).

	The best case scenario is that the item is the first item of the array. This means the operation will immediately return true and result in a time complexity of Ω(1).


1. Finding the max of an array

	#### O(n)
	Traversing an array takes linear time.

	Inorder to guarantee that a given value is greater than the value of all the other items in an array, the entire array must be searched and each item must be compared to the current max value found. This results in a time complexity of O(n).

1. Splitting a String

	#### O(n)
	Traversing an array takes linear time.

	Splitting a string requires at least one traversal of the entire array of chars that make it up. If properly optimized, exactly one traversal is all that is needed to create a substring from each part of the `split`. During the time of traversal, a new sub string may be created whenever an occurrence of the split string is found. However, the resulting time complexity is still at best O(n).

1. Inserting a value to a Hash

	#### O(1)
	Indexing into an array can be done in constant time.

	A hash table usually implements it's keys by the use of an array. While the hash function a hash table uses to convert a key into an index on the array adds time to the operation, it is a constant and therefore removed from the resulting time complexity. Providing that collisions have not occured, the first value at the index of the array should be the desired item in a linked list. This means that in a well designed implementation of a hash table, the lookup time will be constant, allowing an insertion operation to be performed in O(1).

1. Retrieving the keys of a Hash `({ foo: "bar" }.keys)`

	#### O(n)
	Traversing an array takes linear time.

	Since a hash table uses an array to contain it's key/value pairs, the entire array must be traversed to retrieve all of the keys. Assuming that no collisions have occurred, each index of the array will hold a single item. This means that the time complexity is at least the number of indexes on the array. If collisions have occurred, then some indexes may hold multiple entires in the linked list. This means the time complexity will be slower than O(n). However, because these extra entries from resulting collisions represent constants in the equation, and in a real world implementation they are not as likely to happen, the resulting time complexity is firmly O(n).

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)
