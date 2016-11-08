# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

<b>Pramod Jacob</b>

<b>Kenny Kottenstette</b>

Determine the Big O of the following (and ideally explain briefly why):

<b>Accessing an item by index in an array</b>

Constant time O(1). Since arrays are rigid and occupy a set amount of space in memory, only an index value is required to access as item. This is done with a quick operation (first_element + index).

<b>Unshifting a new item into the beginning of an array</b>

Linear time O(n). Adding an element to an array requires rebuilding it at a different location in memory.  

<b>Pushing an item onto the end of an array</b>

Linear time O(n). Adding an element to an array requires rebuilding it at a different location in memory.

<b>Upcasing a String</b>

Linear time O(n). Upcasing a string requires traversing it at least once. 

<b>Reversing a String</b>

Linear time O(n). String needs to be traversed once (in reverse) in order to build a new reversed string. 
 
<b>The Enumerable#each method</b>

Linear time O(n). Array needs to be traversed only once while using the each method.

<b>The Enumerable#include? method</b>

Linear time O(n). Array needs to be traversed only once to find include?'s argument. (Constant time if value is early in array?)

<b>Finding the max of an array</b>

Linear time O(n). Traveres through the array once. 

<b>Splitting a String</b>

Linear time O(n). Requires iterating over string as an array. 

<b>Inserting a value to a Hash</b>

Constant time O(1). Values can be inserted quickly if the key is known and it points to a linked list.

<b>Retrieving the keys of a Hash ({ foo: "bar" }.keys)</b>

Linear time O(n). Requires traversing all the keys in the hash table.