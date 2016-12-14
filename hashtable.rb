require_relative 'linkedlist'
require 'pry'

class HashTable

  attr_accessor :buckets

  def initialize
    @buckets = Array.new(26)
  end

  def hash(word)
    letter = word[0].downcase
    letter.ord - 97
  end

  def insert(word, definition=nil)
    index = hash(word)
    if @buckets[index].nil?
      @buckets[index] = LinkedList.new
    end
    @buckets[index].add_node(word, definition)
  end

  def render_list
    @buckets.each_with_index do |bucket, index|
      next if @buckets[index].nil?
      puts "Bucket for letter #{("A".."Z").to_a[index]}"
      current = @buckets[index].head
      counter = 0
      loop do 
        puts "Entry/Node #{counter+1}: The definition for #{current.word} is #{current.definition}."
        puts
        break if current.next.nil?
        current = current.next
        counter += 1
      end
    end
    return
  end

  def define(word)
    index = hash(word)
    current = @buckets[index].head
    loop do
      break if current.nil? || (current.word.downcase == word.downcase )
      current = current.next
    end
    if current.nil?
      puts "Not Found!"
    else
      puts "#{current.word}: #{current.definition}"
    end
  end

  def load_dict(dictionary)
    File.readlines(dictionary).each do |word|
      stripped = word.strip
      insert(stripped, stripped)
    end
    return
  end
end

=begin
load 'hashtable.rb'
a = HashTable.new
a.insert('a','amy')
a.insert('all','everything')
a.insert('b','bob')
a.insert('c','cat')
a.insert('d','dog')
a.insert('e','epilepsy')
a.define('a')
a.define('all')

load 'hashtable.rb'
a = HashTable.new

a.load_dict("dict.txt")
a.render_list

a.define('Zzz')
a.define('zzzzzzz')
=end