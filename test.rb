require_relative './hash_table'

# read in file and clean up entries
words = File.readlines('./5desk.txt')
words.map!(&:strip)

# insert each word into the hash table with a dummy definition
ht = HashTable.new
words.each { |word| ht.insert(word, word.reverse) }

# search for word definitions
p ht.define("blah")
p ht.define("aardvark")
p ht.define("cat")
p ht.define("dog")
p ht.define("human")
p ht.define("zzz")
