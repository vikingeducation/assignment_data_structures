require './hash_tables'

class HashLoader # Reads and writes dictionary file
  attr_accessor :file
  def initialize
    @file = load_file
    @array_of_words = @file.readlines.each{|word| word.chomp!}
    @HashDictionary = HashTable.new
    @array_of_words.each do |word|
      @HashDictionary.insert(word, nil)
    end
    @HashDictionary.render
  end

  def load_file # Independent function for modularity
    File.open("5desk.txt", "r")
  end
end

H = HashLoader.new