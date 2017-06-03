class HashTable
  require_relative 'linked_list'

  def initialize
    @buckets = Array.new(26)
    loader
  end

  def hash(word)
    #assumes english letters only
    word[0].downcase.ord - 97
  end

  def insert(word,definition="")
    index = hash(word)
    if @buckets[index] == nil
      @buckets[index] = Linked.new
    end
    @buckets[index].add_node(word, definition)
  end

  def render_list
    i = 0
    while i < 26 do
      if @buckets[i] == nil
        puts "#{(i+97).chr} is empty"
      else
        puts "#{(i+97).chr} #{@buckets[i].render}"
      end
      i +=1
    end
  end

  def define(word)
    index = hash(word)
    if @buckets[index] != nil
      definition = @buckets[index].find_definition(word)
      if definition && definition != ""
        "The definition for #{word} is #{definition}"
      else
        "No definition has been found for #{word}"
      end
    else
      "There is no record for #{word}"
    end
  end

  def loader
    @words
    @file_path = '5desk.txt'
    File.open(@file_path, "r") do |file|
      @words = file.readlines
    end
    @words.each do |word|
      insert(word.chomp!, "a tautology: #{word.upcase}!")
    end
end

end

dictionary = HashTable.new



dictionary.render_list

puts dictionary.define("adarga")

puts dictionary.define("car")
