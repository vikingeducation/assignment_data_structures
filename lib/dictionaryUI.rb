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

  # def search_instructions
  #   puts "*******************"
  #   puts "What kind of search?"
  #   puts "1. Exact matches"
  #   puts "2. Partial matches"
  #   puts "3. Begins With"
  #   puts "4. Ends With"
  # end

  # def search_dictionary

  #   search_instructions
  #   search_method = gets.chomp

  #   until search_method == "1" || search_method == "2" ||search_method == "3" || search_method == "4"
  #     puts 'Search method not valid, please specify your search method again'
  #     search_method = gets.chomp
  #   end

  #   search_method = search_method.to_i

  #   puts "Enter the search term"
  #   search_term = gets.chomp

  #   @dictionaryS.search(search_method, search_term, @dictionary.words
  #     )
  #   @dictionaryS.output_matches
  # end

 

  def quit
    puts "Goodbye! See you next time!"
    exit  
  end
end

