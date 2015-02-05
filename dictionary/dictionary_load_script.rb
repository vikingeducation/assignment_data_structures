require_relative 'hash_table'
require '~/Viking/04_Data_Structures_and_Algorithms/assignment_file_ops_sprint/dictionary_loader'

dictionary = DictionaryLoader.new("5desk").words
h = HashTable.new
dictionary.each { |word| h.insert word,nil }
h.render_list