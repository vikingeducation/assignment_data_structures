# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

## Warmup: Big O

### Determine the Big O of the following (and ideally explain briefly why):  

**1. Accessing an item by index in an array**
O(1), constant time.   
Memory is a huge array of byte-sized blocks. 
Each block or location in memory has an address. 
The addresses are sequential.  
When you create an array of 10 `int`s, `int a[10]`, you're creating a pointer (basically a data item that stores addresses [instead of values]), `a`, that holds the address of `a[0]`.   
Because arrays are a contiguous block of memory, to access `a[5]`, all the computer needs look at `a` (which is an address), and sort of add `i + 1` to get the address of whatever is at `a[5]`, and then access whatever is at that address.  
The part where it figures out the address of the item at `i` is negligible and independent of the size of the array.

**2. Unshifting a new item into the beginning of an array**
O(n), linear time.   
You would need to rebuild the array from scratch. 
This involves iterating through each value. 

**3. Pushing an item onto the end of an array** 
O(n), linear time.  
Once again, you would need to rebuild the array from scratch. 

**4. Upcasing a String**
O(n), linear time.    
You would need to go through each letter of the string. 

**5. Reversing a String** 
O(n), linear time.   
You would need to go through each letter of the string.

**6. The Enumerable#each method** 
O(n), linear time.   
Time depends on the size of the array since it goes through each item.

**7. The Enumerable#include? method**
O(n), linear time.   
Time depends on the size of the array since it goes through each item.

**8. Finding the max of an array**
If the array is sorted, O(1), constant time since it knows the address of biggest element.  
If the array is unsorted, O(n), linear time because it needs to go through each item in the array

**9. Splitting a String** 
O(n), linear time, since it needs to go through each element in the string.

**10. Inserting a value to a Hash** 
It depends on how the hash table has been implemented.  
But worst case scenario is O(n), linear time, and best case scenario is O(1), constant time.

**11. Retrieving the keys of a Hash ({ foo: "bar" }.keys)** 
O(n), linear time, since it needs to look at each key. 


Yi-Xuan Lau
