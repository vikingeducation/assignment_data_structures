require_relative 'linked'

# implements hash table for dictionary
class HashTable
  def initialize
    @buckets = []
  end

  def insert(word, definition)
    index = hash(word)
    @buckets[index] = Linked.new unless @buckets[index].is_a?(Linked)
    @buckets[index].insert_end(word, definition)
  end

  def render_list
    @buckets.each_with_index do |bucket, index|
      puts "#{(index + 97).chr.upcase}: #{bucket.length}" unless bucket.nil?
    end
  end

  def define(word)
    index = hash(word)
    definition = false
    definition = @buckets[index].search(word) if @buckets[index].is_a?(Linked)
    definition ? puts("#{word}: #{definition}") : puts("#{word} not found")
  end

  def load
    dictionary = File.readlines('5desk.txt')
    dictionary.each do |word|
      definition = "The defintion of #{word.strip} is #{word.strip} definition"
      insert(word.strip, definition)
    end
  end

  private

  def hash(word)
    word[0].downcase.ord - 97
  end
end

h = HashTable.new
h.load
h.render_list
h.define('dog')
