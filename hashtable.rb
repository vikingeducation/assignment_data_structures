require_relative 'linkedlist'

class Hashtable
  def initialize
    @buckets = []
    load_dictionary('5desk.txt')
  end

  def hash(word)
    word[0].upcase.ord - 65
  end

  def insert_word(word, definition)
    @buckets[hash(word)] = LinkedList.new if @buckets[hash(word)].nil?
    @buckets[hash(word)].add_node(word, definition)
  end

  def render_list
    @buckets.each_with_index do |list|
      list.print_nodes
    end
  end

  def define(term)
    #O(n)
    now = Time.new
    list = @buckets[hash(term)].head
    steps = 1
    while list.next
      if list.word.downcase == term.downcase
        puts "The definition of '#{list.word}' is '#{list.definition}'"
        break
      end
      steps += 1
      list = list.next
    end
    puts "Sorry! The word '#{term}' does not exist in this dictionary" unless list.word
    puts "[Definition found in #{steps} step(s) / #{'%.6f' % (Time.new - now)}s]"
  end

  def load_dictionary(file_path)
    puts "Loading dictionary..."
    now = Time.new
    File.readlines(file_path).each do |word|
      insert_word(word.strip, "#{word}")
    end
    puts "...Dictionary loaded!"
    puts "[Dictionary loaded in #{Time.new - now}s]"
    puts
  end
end

a = Hashtable.new
a.define('aarhus')
