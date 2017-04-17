require 'link_list'

class HashTable
	#sets up empty array
	def initialize
		@buckets = []
  end

  def hash(word)
    #gets first letter of word and gets numerical value
  	puts word.chars.first.upcase.ord - 65
  end

  def insert(word, definition)
    #calls hash method and assigns it to index
    index = hash(word)
    
  	@buckets[index] = LinkedList.new if @buckets[index].nil?

    @buckets[index].append(word, definition)
  end

  def bucket_sizes
    0.upto(25) do |i|
      print "bucket #{i}:"
      puts @buckets[i] ? @buckets[i].size : "empty"
    end
    
  end




end

hashtable = HashTable.new

hashtable.hash("chad")

