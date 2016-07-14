require_relative 'linked_list_2'

class HashTable
  attr_accessor :buckets

  def initialize(size=26, tuning = 1000)
    @buckets = Array.new(size)
    @tuning = tuning
  end

  def hash(string)
    total = 0
    string.split("").each do |char|
      total += char.ord
    end
    total%buckets.length
  end

  def insert(string)
    index = hash(string.keys[0].to_s)
    @buckets[index] ||= LinkedList.new
    @buckets[index].add_node(string)
    balance if @buckets[index].length > @tuning
  end

  def render_list
    @buckets.length.times do |list|
      letters = ("A".."Z").to_a
      unless @buckets[list].nil?
        print "#{ letters[list] }: "
        @buckets[list].search(@buckets[list].length-1)
      end
    end
  end

  def define(word)
    results = @buckets[hash(word)].find_key(word.to_sym)
    puts "search took #{results[0]+1} steps :"
    if results[1].nil?
      puts "no word found"
      return nil
    end
    puts results[1].data.to_s

  end

  def load(filename)
    word_list = []

    File.readlines(filename).each do |line|
      word_list << line.strip
    end

    word_list
  end

  def add_dictionary(word_list)
    word_list.length.times do |count|
      insert({ word_list[count].to_sym =>
        "The definition of #{word_list[count]}" })
    end
  end

  def balance
    new_h = HashTable.new(@buckets.length*2)
    print "#{@buckets.length} "
    @buckets.each do |linked_list|
      unless linked_list.nil?
        linked_list.each do |node|
          new_h.insert(node.data)
        end
      end
    end

    @buckets = new_h.buckets
  end

end

# h = HashTable.new
# h.add_dictionary(h.load("5desk.txt"))
