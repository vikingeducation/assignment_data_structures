require './linked_list'

class HashTable
  def initialize
    @buckets = Array.new(26) { nil }
    add_defs_to_dict
  end

  def read_dict_file
    dict = File.readlines("5desk.txt", "r").map do |item| 
      item.strip
    end
  end

  def add_defs_to_dict
    read_dict_file.each do |word|
      insert(word)
    end
  end

  def hash(word)
    char = word.chars.first
    char.ord - 97
  end
 
  def define(word)
    index = hash(word)
    ll = @buckets[index]
    results = ll.find_value(word) unless ll == nil
    number_of_moves = ll.nil? ? 1 : ll.moves
    if results
      puts "The definition of #{word} is #{word}. Finished in #{number_of_moves} moves."
    else
      puts "#{word.capitalize} is not in the dictionary. Finished in #{number_of_moves} moves."
    end
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
      puts if @buckets[index]
    end
    puts "***********"
  end

  def render_bucket(index, ll_array)
    print "#{un_hash(index)}:    "
    ll_array.each do |item|
      print "#{item}   "
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
      result = gets.chomp.downcase
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
    end
  end


  def run_insert
    puts "What would you like to insert?"
    result = gets.chomp
    insert(result)
  end
end
