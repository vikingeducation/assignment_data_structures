require_relative 'hash_table.rb'

class Dictionary
  attr_accessor :dic
  def initialize
    @dic = HashTable.new
    inputs_definition
  end

  def inputs_definition
    words = read_file
    words.each do |word|
      @dic.insert([word, "this is fucking definition of #{word}"])
    end
  end

  def read_file
    File.readlines('5desk.txt').map! { |word| word.strip.downcase }
  end
end
