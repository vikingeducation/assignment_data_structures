# assignment_data_structures
by Steven Chang
----------------------------
Buckets and buckets of data!

[A Ruby-based data structures assignment for the Viking Code School which uses arrays, hashes, linked lists, structs, graphs and trees](http://www.vikingcodeschool.com)

Warmup: Big O (The relationship between steps and size)

Answer the following Big O notation questions, and store the answers in your README.md for this assignment.

Think carefully about what tasks the Ruby interpreter actually has to run through to make them happen (or in other words, what code you'd have to write yourself to do them if the method didn't exist).

Determine the Big O of the following (and ideally explain briefly why):

1. Accessing an item by index in an array

- Constant time: This is completely independent of how many values are stored in that array. That's because the computer is just performing a simple addition and multiplication operation behind the scenes to locate the correct position in memory instead of needing to check with every value.

2. Unshifting a new item into the beginning of an array

- Linear time: Becase a new array has to be created, we need to iterate through every single member of the array once.

3. Pushing an item onto the end of an array

- Linear time: Because a new array has to be created, we need to iteration through every single member of the array once.

4. Upcasing a String

- Linear time: Because you have to go through each character of the string and then upcase it.

5. Reversing a String

- Linear time: Because you have to create a new string and pop push each character on.

6. The Enumerable#each method

- Linear time

7. The Enumerable#include? method

- Linear time: Because the last item in the array could be the item we're looking for.

8. Finding the max of an array

- Linear time: Because the last item in the array could be the item we're looking for.

9. splitting a String

- Linear time: Go through each character in the string searching for the split argument. When you hit one, shift all previous characters into an array as a single word. 

10. Inserting a value to a Hash

- Constant Time - That's what the internet says but I'm not 100% sure. I thought because you first gotta find the key, you'd have to go through the array of keys or something??

11. Retrieving the keys of a Hash ({ foo: "bar" }.keys)

- Again Constant Time - but again not sure why. 