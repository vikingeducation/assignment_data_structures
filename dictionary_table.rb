class DictionaryTable
  attr_reader :hash_dictionary

  def initialize
    @hash_dictionary = HashTable.new
  end

  def load_file_into_hash
    dictionary = DictionaryLoader.new("dictionary.txt").load
    dictionary.each { |word| @hash_dictionary.insert(word, "The definition of #{word} is #{word}")
    }
    return
  end

end