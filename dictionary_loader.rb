require_relative "hash_table"
require_relative "dictionary_loader"
require_relative "dictionary_table"

class DictionaryLoader

  def initialize(file_location)
    @file_location = file_location
  end

  def load
    arr = []
    file_lines = File.readlines(@file_location)
    file_lines.each do |line|
      arr << line.strip.downcase.capitalize
    end
    arr
  end

end