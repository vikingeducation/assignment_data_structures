require './linked_list'

class HashTable
  attr_reader :buckets

  def initialize
    @buckets = []
  end

  # Is this efficient? Or should I be defining
  # letter-index pairs as they come in?  Right now,
  # the array jumps to full-size (26) as soon as
  # I get one Z-word.
  def hash(word)
    word[0].downcase.ord - 97
  end


  def insert(word)
    bucket = @buckets[hash(word)]
    bucket = LinkedList.new if bucket.nil?

    bucket.add_node(word, nil)

    @buckets[hash(word)] = bucket

  end


  def render_list
    #@buckets.each do |bucket|
    0.upto(25) do |index|

      bucket = @buckets[index]

      unless bucket.nil?
        puts "#{bucket.head.word[0].upcase} (#{bucket.count_nodes})"
      end

    end

  end


  def define(word)
    bucket = @buckets[hash(word)] # 1 step
    counter = 1
    search_success = false

    node = bucket.head

    bucket.count_nodes.times do
      counter += 1
      search_success = true if node.word == word
      break if search_success || node.next.nil?
      node = node.next
    end

    puts "Success! #{node.word}: #{node.definition}" if search_success
    puts "Sorry, '#{word}' was not found!" if !search_success
    puts "Total steps: #{counter}."

  end

end