require './hash_table'

hash = HashTable.new

File.open('5desk.txt').each do |line|
  word = line.strip.downcase
  hash.insert(word, "The definition of word is #{word}-ish")
end

hash.define("baby")
hash.define("dolphin")
hash.define("quartz")
hash.define("traut")
hash.define("death")

hash.bucket_average # => 2361
puts hash.render_list
# >> Searched for baby through 21 nodes
# >> The definition of word is baby-ish
# >> Searched for dolphin through 2705 nodes
# >> The definition of word is dolphin-ish
# >> Searched for quartz through 110 nodes
# >> The definition of word is quartz-ish
# >> Searched for traut through 2972 nodes and failed
# >> Sorry, the word you entered doesn't seem to exist.
# >> Searched for death through 333 nodes
# >> The definition of word is death-ish
# >> 3946
# >> 3228
# >> 5738
# >> 3477
# >> 2532
# >> 2441
# >> 1990
# >> 2311
# >> 2738
# >> 637
# >> 652
# >> 2000
# >> 3647
# >> 1656
# >> 1660
# >> 4919
# >> 273
# >> 3158
# >> 6364
# >> 2971
# >> 2174
# >> 1075
# >> 1420
# >> 37
# >> 200
# >> 162
