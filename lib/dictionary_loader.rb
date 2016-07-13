require_relative 'hash'

dictionary = File.readlines("5desk.txt").map do |word|
  word.strip
end

h = HashTable.new

dictionary.each do |word|
  h.insert(word)
end

p h.buckets

h.define("zebra")
h.define("zafasdfasdfasdf")
