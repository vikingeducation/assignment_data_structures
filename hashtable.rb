require_relative 'linkedlist.rb'

class HashTable
  attr_accessor :buckets

  def initialize
    @buckets = Array.new
  end

  def hash_word(word)
    letter = word[0].downcase
    match = "a"

    output = 0
    while match != letter do
      match.next!
      output += 1
    end

    output
  end

  def reverse_hash(number)
    letter = "a"
    number.times do
      letter.next!
    end

    letter
  end

  def insert(word, definition = "")
    bucket = hash_word(word)
    @buckets[bucket] = LinkedList.new if @buckets[bucket].nil?
    @buckets[bucket].add_node([word, definition])
  end

  def render
    @buckets.each_with_index do |bucket, i|
      letter = reverse_hash(i)
      if bucket.nil?
        puts "#{letter} | 0 Words"
      else
        puts "#{letter} | #{bucket.size} Words"
      end
    end
  end

  def define(word)
    bucket = hash_word(word)
    exist = false
    current = @buckets[bucket].head unless @buckets[bucket].nil?
    num_steps = 0

    while !current.data.nil? do
      num_steps += 1
      if current.data[0].downcase == word.downcase
        exist = true
        definition = current.data[1]
        break
      end
      current = current.next
    end

    if exist
      puts "#{word}: #{definition} | Took #{num_steps} steps"
    else
      puts "\"#{word}\" does not exist in the hash table | Took #{num_steps} steps"
    end
  end

  def hash_file(path)
    file = File.open(path)
    words = file.readlines

    words.each do |word|
      insert(word)
    end
  end
end

h = HashTable.new
h.insert("Apple", "You are the Apple of My Eye")
h.insert("Butt", "Lol")
h.insert("Beep", "Boop")
h.insert("Poop", "On Your Floor")
h.define("Poop")
h.define("Beep")
h.define("asdfla")
h.render

h.hash_file("5desk.txt") # way too inefficient (Takes too long)
h.render

