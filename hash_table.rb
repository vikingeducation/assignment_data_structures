require_relative 'linked_list'
require 'pry'

class HashTable
  attr_reader :buckets
  def initialize
    @buckets = Array.new(26){ LinkedList.new }
    @tic = 0
  end

  def hash(entry)
    @tic += 1
    (entry[0].upcase.ord) - 65
  end

  def insert(entry)
    @tic += 1
    @buckets[hash(entry)].add_node(entry)
  end

  def render_list
    @buckets.each do |bucket|
      # puts "#{bucket.contents.count}, #{bucket.contents}"
      puts "#{bucket.contents.count}"
      @tic += 1
    end
  end

  # in N time
  def define(word)
    result = @buckets[hash(word)].match(word)
    puts "'#{result[0]}' found in #{result[1]} steps"
    @tic += 1
  end

  def load_dictionary(file)
    File.readlines(file).each do |word|
      word = word.chomp
      insert([word,"the definition of #{word} is #{word}"])
    end
    @tic += 1
  end

  def rebalance?(num)
    @buckets.each do |list|
      @tic += 1
      true if list.contents.count > num ? true : false
    end
  end

  def balance(num)
    if rebalance?(num)
      holder = @buckets
      @buckets = Array.new(100) do |n|
        @tic += 1
        LinkedList.new
      end
      holder.each do |list|
        list.contents.each do |data|
          @buckets[balance_hash(data)].add_node(data)
          @tic += 1
        end
      end
    end
  end

  def balance_hash(entry)
    @tic += 1
    return entry[0].upcase.ord if entry[0].length == 1
    ((entry[0][0].upcase.ord * entry[0][1].upcase.ord) * 31 )% 100
  end

  def tic
    puts "tic is #{@tic}"
    @tic = 0
  end


end

# table = HashTable.new
# table.load_dictionary('5desk.txt')
# table.tic
# table.load_dictionary('test.txt')
# table.insert(['add', 'to add'])
# table.insert(['subtract', 'to subtract'])
# table.insert(['apple', 'tasty fruit'])
# table.define('add')
# table.render_list
# table.define('able')
# table.render_list
# table.tic
# table.balance(10)
# table.tic
# puts "balanced list"
