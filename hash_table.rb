require 'linked_list'
class HashTable < Array
  def initialize
    @buckets = []

  end

  def hash(word)
    return word.downcase.ord - 97
  end

  def insert(word, meaning)
    key = hash(word)
    @buckets[key] = LinkedList.new if @buckets[key].nil?
    @buckets[key].append(word, meaning)
  end

  def bucket_sizes
    0.upto(25) do |i|
      print "bucket #{i}: "
      puts @buckets[i] ? @buckets[i].size : "empty"
    end
  end

  def define(word)
    key = hash(word)
    return "Not found" unless @buckets[key]
    meaning = @buckets[index].find_word(word).meaning
    meaning ? meaning : "Not found"
  end
end

dict_array = File("5desk.txt", readlines)
table = HashTable.new
dict_array.each do |word|
  word.definition = word
  table.hash(word)
  table.insert(word)
end
