require 'dictionaryUI.rb'
require 'linked_list.rb'

class HashTable


  # Hash function to index into an array
  # - sum value of each letter - sum of value of all letters and modulo - .ord of the value of letter better than first letter of string
  # e.g. use the first letter of the string to help to index into the array
  # Use the returned number - key - use that index into array and then have linked list to store the info into the right bucket

  # linked list stored into the array

  attr_accessor :arr, :dictionary

  def initialize
    @arr = Array.new(25)
    dictionaryUI = DictionaryUI.new
    dictionaryUI.run
    @dictionary = dictionaryUI.dictionary
  end

  def generate_codes
    foreach entry in the dictionary put it in the array which has a linked list in each position
  end


  def hash(word)
    code = word[0].ord
  end

  def insert(key, word)
    if(@arr.include?(key))
      @arr[key] = 
      append to linked list
      otherwise new linked list
    @arr[key]
  end

end