# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

Justin Mullis' fork

# Big O for...
## Accessing an item by index in an array
Constant Time, O(1)
You just look at where the element is in memory and add index number of bytes,
So this is independent of the data size, takes the same time no matter if its 10
elements or 10 thousand.

## Unshifting a new item into the beginning of an array
Linear Time, O(n)
The entire array must be recreated with the new item at the beginning, this is going
to increase in time directly proportional to the size of the array

## Pushing an item onto the end of an array
Contant Time, O(1)
Since most arrays will have some padding on the end for new elements, you can insert
the new element at the end directly.  This will always only take a few steps at most.

## Upcasing a string
Linear Time, O(n)
Enumerate over the string, upcase each character.  The time complexity increases 
proportionally as the string grows.

## Reversing a string
Linear Time, O(n)
Enumerate over the string, pulling each character out and making a new string first to last.
This will again increase directly proportional to your string size.

## The Enumerable#each method
Linear Time, O(n)
Take each child element of the data.  Will increase proportional to input

## The Enumerable#include? method
Linear Time, O(n)
Take each child element of the data until you find the one you're looking for.
The Omega of this function might be something much lower, if you find your element early.
Could also be better if the data is sorted.

## Finding the max of an array
Linear Time, O(n)
You're taking each element, setting it to max if its bigger than current max.
Only slightly more complex than basic enumeration

## splitting a String
Linear Time, O(n)

## Inserting a value to a Hash
Contant Time, O(1)
We assume the average complexity when dealing with a hash is the best of dealing
with an array and a linked list.  So insertion ought to be about as good as grabbing
an array index and inserting into a linked list

## Retrieving the keys of a Hash
Constant Time, O(1)
This ought to be really quick, we just need to enumerate over the linked lists in the hash
