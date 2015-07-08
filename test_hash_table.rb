require_relative 'hash_table.rb'


dictionary_array = File.readlines('5desk.txt')
dictionary_array.map {|line| line.strip!}


h = HashTable.new

dictionary_array.each do |w|
  h.insert(w)
end

h.render_list('x'.ord - 97)

h.define('absolute')
h.define('asfakfjalskjf')

