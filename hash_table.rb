require_relative 'linked_list'
require 'pry'

class HashTable
  attr_reader :buckets
  def initialize
    @buckets = Array.new(26){ LinkedList.new }
  end

  def hash(word)
    (word[0].upcase.ord) - 65

  end

  def insert(word)
    @buckets[hash(word)].add_node(word)
  end

  def render_list
    @buckets.each do |bucket|
      puts "#{bucket.contents.count}, #{bucket.contents}"
    end
  end

  def define(word)
    # @buckets[hash(word)] =>  LinkedList
    # while holder.data[0] != word, next item on LinkedList and check
    result = @buckets[hash(word)].match(word)
    puts "'#{result[0]}' found in #{result[1]} steps"
  end

  def load_dictionary(file)
    File.readlines(file) do |f|
      insert([f,"the definition of #{f} is #{f}"])
    end

  end
end

table = HashTable.new
table.load_dictionary('5desk.txt')
# table.insert(['add', 'to add'])
# table.insert(['subtract', 'to subtract'])
# table.insert(['apple', 'tasty fruit'])
# # table.insert('subtracted')
# # table.insert('subtracter')
# # table.insert('speaker')
# # table.insert('utopia')
# table.render_list
# table.define('add')
# table.define('what')
# table.define('able')
