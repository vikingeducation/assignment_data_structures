=begin
Hash Table

  Note: Many of these methods will actually be given to you from your existing linked list and should not be duplicated!

  1. Build an empty HashTable class (DONE)

  2. As part of initialization, create the buckets array where data will be stored. (DONE)

  3. Add a hash method which takes a word and returns an array index based on its first letter (ie. indexes 0-25). This is where you'll store each word. Note: Check out the ord method... (DONE)

  4. Add an insert method which adds a word to the appropriate bucket as a member at the end of the linked list stored there. (DONE)

  5. If this is the first word for that letter, create a new linked-list in that bucket. (Done)

  6. If not, append it to the existing list. (DONE)

  7. Add a render_list method which outputs your hash table in a way which you can read. At the very least, output the number of list nodes at each bucket so you can see how balanced your list is. (DONE)

  8. Add a define method which takes a word and locates its definition in your hash table or returns a friendly "not found" message. (Done)

  9. Output how many steps it took to locate the word (how many nodes were traversed). Play with this and see how many steps it takes to locate a given word, including one that doesn't exist. (Done)

  10. Read in the dictionary from your File I/O assignment and put it into your hash table. Create dummy definitions like "The definition of 'cat' is 'cat'.". !!!!!!!! How can I do this when these words don't have definitions????

  11. Verify that your dictionary words are now stored in your hash table.
  !!!!!!!! How can I do this when these words don't have definitions????

  12. Verify that you can search for words.
  !!!!!!!! How can I do this when these words don't have definitions????

  13. Play with your hash table -- how many steps does it take to perform certain operations?? What is the Big O of this?
  The big O is supposedly 1, but I don't think this is too accurate. If the concept is an array's big O is 1 so yeah that parts fast but considering the linked list would be let's say n/50, if you cancel out the constants than it's still N right???

=end

require_relative 'linked_list'

class HashTable

  attr_accessor :buckets

  def initialize
    @buckets = []
  end

  # 3. Add a hash method which takes a word and returns an array index based on its first letter (ie. indexes 0-25). This is where you'll store each word. Note: Check out the ord method...
  def hash_method(word)
    word[0].ord
  end

  # 4. Add an insert method which adds a word to the appropriate bucket as a member at the end of the linked list stored there.

  def insert(word, definition)
    # if spot is empty
    @buckets[hash_method(word)] = LinkedList.new if @buckets[hash_method(word)].nil?
    # adding our word
    @buckets[hash_method(word)].add_node_to_end(word, definition)
    puts "Added to dictionary: #{word} - #{definition}"
  end

  # 7. Add a render_list method which outputs your hash table in a way which you can read. At the very least, output the number of list nodes at each bucket so you can see how balanced your list is.

  def render_list
  # Figuring out how many buckets we got going.
  count = 0
  @buckets.each_with_index do |bucket, index|
    if bucket != nil
      count += 1
      puts "Bucket: #{index.chr} has #{bucket.list_length} items."
    end
  end
  puts "You have #{count} buckets."

  end

  # 8. Add a define method which takes a word and locates its definition in your hash table or returns a friendly "not found" message.
  def define(word)
    # Check if that word would possibly be in a bucket
    # if so, check if that word is in the list

    if @buckets[hash_method(word)].nil?
      puts "0 nodes traversed."
      puts "This a friendly 'word not found' message."
    else
      puts @buckets[hash_method(word)].word_meaning(word)
    end
  end

end

x = HashTable.new
x.insert("Constipated", "The inability to squeeze one out.")
x.insert("Cat Power", "Once wanted to be the Muhammad Ali.")
x.insert("Posture", "Terrible but I'm trying.")
print x.buckets[x.hash_method("C")].print_list
print x.render_list
x.define("Tang")