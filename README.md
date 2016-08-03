# assignment_data_structures
Buckets and buckets of data!

## Big O Warmups

*Note: Whenever you encounter these kinds of problems, be explicit with your assumptions.  There may be different answers depending on them!*

* **Accessing an item by index in an array:** O(1) -- simply use addition, multiplation and jump to the exact spot in memory you need.
* **Unshifting a new item into the beginning of an array:** O(N) -- to put a new element into the beginning of an array, you need to rebuild the array with everything else moved back one space in order to make room for that item.
* **Pushing an item onto the end of an array:** O(1) or O(N) -- if you assume we are working with low level arrays of fixed size, the array needs to be rebuilt from the beginning, so O(N).  If you assume we're working with slightly higher level arrays which automatically leave a bit of extra room at the end, it's O(1) since then we wouldn't need to fully rebuild.
* **Upcasing a String:** O(N) -- Need to go through each character and change it with the upcased version.
* **Reversing a String:** O(N) -- We at least need to go through half of the string if performing an in-place swap, though often the string is loaded into a stack then turned into a new string.
* **`each`:** O(N) -- simple iteration through the full collection
* **`include?`:** O(N) -- worst case requires checking the full array.  Note that many people don't think about their humble `include?` as being O(N)!
* **`max`:** O(N) -- We must go through all members to ensure we've found the highest of them.
* **`split`:** O(N) -- We must at least go through each member of the string and turn it into an array.
* **Hash insertion:** O(1) or O(N) -- in the worst case scenario, we assume a hash with a single bucket, which will behave as a simple linked list.  If we assume insertion in the middle (e.g. a sorted list), we need to traverse the list first so O(N).  If we assume the hash is actually well-balanced (e.g. there are no linked lists longer than `k`, else we would rebalance it), then it is constant time O(1) since we assume it is the sum of the hashing function (O(1)), the array indexing to the correct bucket (O(1)), and inserting the value into a negligibly small linked list (roughly O(1)).  This is the most conventional way to describe the big O of a hash, but it is good to understand what assumptions this is making about the structure of your hash table.
* **Retrieving keys of a hash:** O(N) -- we need to at least cycle through each bucket (assuming the number of buckets is fixed relative to N, so O(1)) and then each item in their respective linked lists (O(N)).  If the hash has more buckets than N, which is conventional, this is a non-trivial amount, though still O(N) in the asymptote.



##Stacks and Queues

An array is a good place to start, since both stacks and queues are sequential data structures that store everything in order. Since you can't use `#push` or `#pop` or `first`, and it's sort of cheating to count on Ruby's internal `[-1]` method, you need another way to track where in your array the last element was. Use a `@size` instance variable, and update it every time you add on a new element.

For stacks, you just have to add and remove the top element, but queues are slightly more complicated. If you're using an array as basis, at some point -- either when you add an element or when you remove one -- you have to shuffle all existing elements down the line by one step. Otherwise, Array[0] is going to be nil, and then array[1] will be nil, and your data structure will grow and grow over time for no good reason. By the time you finished this lesson, you might have noticed that a basic linked list could also be turned into a queue and would not have had this problem (just de-link the end or beginning nodes).

## Linked Lists

If you followed along with the example, you shouldn't have had too much trouble. The only things worth noting are:

- Yes, you can give a node multiple data variables like `:word` and `:definition`, letting you string along complex packets of information in the order you want.
- You don't *have* to track the tail of the list, since the tail is just the node whose `next` is nil, but it's sometimes useful as a shortcut.
- Searching for a word is about traversing the whole list until you bump into the word or you bump into the end of the list. `while` and `until` loops are much more suited to this traversal than an `each` or `for` loop.
- tracking the size will always be costly, because you have to traverse the whole list every time. You can either do this by saving a variable `@size` that updates every time you add or remove a node, or you can simply save space and pay the time cost whenever outputting the size.
- check out the `#splice` function, which adds a word to the middle of a list. Remember you need to track the node on either side of your new word so you don't accidentally break the chain.

## Hash Tables

These might have been easier than you expected. The new conceptual leaps are just:

- creating a hashing function by converting the first letter of a word to a number (using `#ord` gets you the number, subtracting 65 gets you down to 0-25 for uppercase letters ).
- using an array of LinkedLists to store each letter
- all the rest of your tools should be methods the LinkedList had anyway
