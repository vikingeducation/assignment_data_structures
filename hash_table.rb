require './link_list'

class HashTable
  attr_accessor :word, :definition
	def initialize
		#creates 26 empty arrays for each letter of the alphabet
    @buckets = Array.new(26)
  end

	def hash(word)
		#returns a number based on words first letter
		word[0].downcase.ord - 97
  end

	def insert(word)
		index = hash(word)
		if @buckets[index] = nil?
			 @buckets[index] = LinkedList.new
		end
	  
	  @buckets[index].add_node(word, definition, nil) 
	end

	def render_list(index)
		puts "List is Empty" if @buckets[index].nil?

	end

end

hash = HashTable.new
hash.insert("test").inspect
