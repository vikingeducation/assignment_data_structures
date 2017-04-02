class HashTable
	#sets up empty array
	def initialize
		@buckets = []
  end

  def hash(word)
  	puts word.chars.first.upcase.ord - 65
  end

  def insert(word, definition)
   index = hash(word)

  	@buckets[index] = 
  end


end

hashtable = HashTable.new

hashtable.hash("chad")

