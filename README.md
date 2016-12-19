Dariusz Biskupski

# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)


Warmup: Big O

Answer the following Big O notation questions, and store the answers in your README.md for this assignment.

Think carefully about what tasks the Ruby interpreter actually has to run through to make them happen (or in other words, what code you'd have to write yourself to do them if the method didn't exist).

Determine the Big O of the following (and ideally explain briefly why):

1. Accessing an item by index in an array
O(1) - time taken to access particular index in an array is independent of array size.

2.Unshifting a new item into the beginning of an array
O(1) - we only removing first element which doesn't leave any wholes in the structures and releases extra memory in allocated space occupied by this array

3.Pushing an item onto the end of an array
O(n) - the array needs to be rebuild in new space in memory as it's bigger now and the old space was exactly of the size of the array (unless it's an dynamic array and O(n))

4.Upcasing a String
O(n) - we need to access, read and rewrite every single item in the array so the time is proportionally dependant on the size of the string

5.Reversing a String
O(n) or even 2n as we need to access every letter in the string one by one and build a new one using stack data type

6.The Enumerable#each method
O(n) - we nedd to access every item so time of accessing is proportionally dependant on the size of the array/string/linked_list/hash etc.

7.The Enumerable#include? method
O(n) - we need to iterate through every single item in array/linked liest etc - in worst case scenario in order to find the item which might be very last
with hash it can be O(1) if we have a key

8.Finding the max of an array
O(n) - we need to iterate through every single item in array/linked liest etc - in worst case scenario in order to find the item which might be very last

9.splitting a String
O(n) - we need to create a new place new place in a memory with new object - array which will contain every single item of the string. The longer the string the more time it takes to revert it into array.

10.Inserting a value to a Hash
O(1) - as it's independant of size of the Hash. We can locate key easily via hash function, which finds the indexed linked_list in an array aka buckets. Then the the function finds either specific index in linked_list or appends to the end of the linked_list where the last node is known.

11.Retrieving the keys of a Hash ({ foo: "bar" }.keys)
O(n) - if the key is one, the Big O is 1. If the umber of keys is n the time needed to read all the keays is n.
