require_relative 'node.rb'
require_relative 'linked_list.rb'

class HashTable
	attr_reader :path
	attr_reader :tick

	def initialize
		@length = 26
		@buckets = Array.new(@length)
		@map = ('a'..'z').to_a
		@path = []
		@tick = 0
	end

	def path
		@path.join(' => ')
	end

	def hash(word)
		raise("Not a word") unless word =~ /^[a-zA-Z]+$/
		@path << "#hash('#{word}')"
		@tick += 1
		word = word.downcase
		@map.index(word.chars.first)
	end

	##
	# Big-O time: O(1)
	# Because the index can be randomly accessed
	# and the list#append method has a Big-O of O(1)
	# the result is constant time

	def insert(word, definition)
		@tick = 1
		@path = ["#insert('#{word}', '#{definition}')"]
		index = hash(word)
		@buckets[index] = LinkedList.new unless @buckets[index]
		list = @buckets[index]
		node = Node.new(word, definition)
		list.append(node)
		@path << list
	end

	##
	# Big-O time: O(n)
	# Although the array index can be randomly accessed
	# Searching for a value on the linked list requires traversal
	# Traversal results in a linear time lookup

	def define(word)
		@tick = 1
		@path = ["#define('#{word}')"]
		index = hash(word)
		list = @buckets[index]
		if list
			n = list.read(0)
			i = 0
			str = ''
			while (n)
				str += "(#{i}: #{n.word})"
				str += '->' if n.next
				return n.definition if n.word == word
				n = n.next
				i += 1
				@tick += 1
			end
			@path << str
		end
		"Not found"
	end

	def render_list
		lines = ["-- HashTable --"]
		i = 0
		while (i < @length)
			lines << "Bucket #{i}: #{@buckets[i]}"
			i += 1
		end
		lines << '-' * lines[0].length
		lines.join("\n")
	end
end