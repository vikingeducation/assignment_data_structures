require 'linked_list'
class Hash_Table < Array
  def initialize
    @buckets = []

  end

  def hash(word)
    letter_array = word.split("")
    return letter_array.downcase.ord - 97
  end

  def insert(key, word)
    if @buckets[key].is_nil?
      @list = LinkedList.new
      list.add_node(word)
    else
      LinkedList.add_node(word)
    end
  end

  def self.render
    puts self
  end

  def define(word)
    @list.find(word)
    if @list.include?(word)
    puts "#{definition}"
    else
      puts "Word was not found"
    end
  end
end

dict_array = File("5desk.txt", readlines)
dict_array.each do |word|
  word.definition = word
  hash_table.hash(word)
  hash_table.insert(word)
end
