# assignment_data_structures
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

Student: Adam Kinson

Warmup: Big O

Answer the following Big O notation questions, and store the answers in your README.md for this assignment. Think carefully about what tasks the Ruby interpreter actually has to run through to make them happen (or in other words, what code you'd have to write yourself to do them if the method didn't exist):

1. Accessing an item by index in an array.
Answer: Ruby arrays are Associative Arrays, similar to hashes.  The interpreter has to touch the list to find the location in memory associated with the given index.  Then it goes to that location to fetch and return the value.  Assuming the hash function prevents collisions, there are no additional steps for large data sets, so this is O(1).

2. Unshifting a new item to the beginning of an array.
Answer: Again, it's an Associative Array.  The interpreter will have to add 1 to every index in the list, then create a new zero index.  It will then save the value and push that location back to the zero index in the list.  As the list size goes to infinity, the first step of adding 1 to each index also goes to infinity, so this is O(n).

3. Upcasing a String.
Answer: The interpreter has to step through every character and capitalize it if necessary.  That's 2 steps for each character.  For an infinitely long string, the number of steps goes to 2*infinity, so this is O(2n) which is the same as O(n).

4. Reversing a String
Answer: The interpreter has to step through each character and add it to a stack.  It then has to pop each character off the stack, which will come out in reverse order.  Again, this is O(2n) or just O(n)

5. The Enumerable#each method.
Answer: This is very similar to the prior two involving stepping through each item.  Still, the number of actions per item is constant, so it still just varies directly with n... O(n)

6. The Enumerable#include? method.
Answer: Include is almost the same as each, only it has the added benefit that it can stop as soon as it finds the first match.  At worst, it's still O(n), but the best case scenario is that the first item is a match, which would become O(1).
