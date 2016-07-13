require './linked_list'
class HashTable
  def initialize
    @buckets = Array.new(26) { nil }
  end

  def hash(word)
    char = word.chars.first
    char.ord - 97
  end
  
  def define(word)
    index = hash(word)
    @buckets[index].find_value(word)
  end

  def un_hash(index)
    (index + 97).chr
  end

  def insert(word)
    d_word = word.downcase
    index = hash(d_word)
    if @buckets[index].nil?
      @buckets[index] = LinkedList.new
      @buckets[index].add_node(d_word)
    else
      @buckets[index].add_node(d_word)
    end
  end

  def render_list
    puts "***********"
    @buckets.length.times do |index|
      render_bucket(index, @buckets[index].full_list) unless @buckets[index].nil?
    end
    puts "***********"
  end

  def render_bucket(index, ll_array)
    print "#{un_hash(index)}:    "
    ll_array.each do |item|
      print item
    end
  end

  def run
    welcome_message
    while true
      method_dispatch
    end
  end

  def welcome_message
    puts "Welcome to the hash dicitonary"
  end

  def method_dispatch
    puts "What would you like to do?"
    puts "insert => i render => r definition => d quit => q"
    begin
      result = gets.chomp
    end until %w(i r d q).include?(result)
    case result
    when 'i'
      run_insert
    when 'r'
      render_list
    when 'd'
      run_definition
    when 'q'
      exit
    end
  end

  def run_definition
    puts "What would you like to find the definition of?"
    result = gets.chomp
    if define(result)
      define(result)
    else
      puts 'That word is not in the dictionary.'
    end
  end


  def run_insert
    puts "What would you like to insert?"
    result = gets.chomp
    insert(result)
  end
end
