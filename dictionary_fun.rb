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

# >> Searched for Baby through 3229 nodes and failed
# >> Sorry, the word you entered doesn't seem to exist.
