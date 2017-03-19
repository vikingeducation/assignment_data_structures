# DictionaryUI is the main class which handles the user interaction loop.

require_relative 'dictionary_loader'

class DictionaryUI

  attr_accessor :dictionaryL, :dictionary

  def initialize
    @dictionaryL = DictionaryLoader.new
  end

  def run
    get_dictionary
  end

  def get_dictionary
    puts "Where is your dictionary? ('q' to quit)"
    file_path = gets.chomp

    until File.file?(file_path)
      puts 'Dictionary not found, please specify your file again'
      file_path = gets.chomp
    end

    quit if file_path == "q"
    @dictionaryL.load(file_path)
    @dictionary = @dictionaryL.dict_file
  end

  def quit
    puts "Goodbye! See you next time!"
    exit  
  end
end

