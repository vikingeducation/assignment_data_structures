# DictionaryLoader is a helper class whose single responsibility is to load in the dictionary.

require_relative 'dictionary'

class DictionaryLoader
  attr_accessor :dict_file

  def load(file_path)
    dict_arr = read_file(file_path)
    @dict_file = Dictionary.new(dict_arr)
  end

  def read_file(file_path)
    arr = []
    File.readlines(file_path).each do |line|
      arr << line.strip
    end
    arr
  end
end



