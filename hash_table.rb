require_relative 'linked_list'
require 'pry'

class HashTable
  attr_reader :buckets
  def initialize
    @buckets = Array.new(26){ LinkedList.new }
  end

  def hash(entry)
    (entry[0].upcase.ord) - 65
  end

  def insert(entry)
    @buckets[hash(entry)].add_node(entry)
  end

  def render_list
    @buckets.each do |bucket|
      # puts "#{bucket.contents.count}, #{bucket.contents}"
      puts "#{bucket.contents.count}"
    end
  end

# in N time
  def define(word)
    # @buckets[hash(word)] =>  LinkedList
    # while holder.data[0] != word, next item on LinkedList and check
    result = @buckets[hash(word)].match(word)
    puts "'#{result[0]}' found in #{result[1]} steps"
  end

  def load_dictionary(file)
    File.readlines(file).each do |word|
      word = word.chomp
      insert([word,"the definition of #{word} is #{word}"])
    end
  end

  def rebalance?(num)
    @buckets.each { |list| true if list.contents.count > num ? true : false }
  end

  def balance(num)
    if rebalance?(num)
      holder = @buckets
      @buckets = Array.new(100){ LinkedList.new }
      holder.each do |list|
        list.contents.each do |data|
          @buckets[balance_hash(data)].add_node(data)
        end
      end
    end
  end

  def balance_hash(entry)
    return entry[0].upcase.ord if entry[0].length == 1
    ((entry[0][0].upcase.ord + entry[0][1].upcase.ord)-39) % 100
  end


end

table = HashTable.new
table.load_dictionary('5desk.txt')
# table.load_dictionary('test.txt')
# table.insert(['add', 'to add'])
# table.insert(['subtract', 'to subtract'])
# table.insert(['apple', 'tasty fruit'])
# table.define('add')
table.render_list
# table.define('able')
table.balance(10)
puts "balanced list"
table.render_list
