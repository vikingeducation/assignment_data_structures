# Dictionary hash table
# First we need to make the nodes for each linked list
Node = Struct.new(:word, :definition, :next)

class LinkList
	attr_accessor :head, :last

	def initialize(first_node = nil)
		@head = first_node
		@last = first_node
	end

	def add_first_node(word, definition = nil)
		@head = Node.new(word, definition, nil)
		@last = @head
	end

	def add_node(word, definition = nil)
		if @head.nil?
			add_first_node(word, definition)
		else
			new_node = Node.new(word, definition)
			@last.next = new_node
			@last = new_node
		end
	end

	def find_node(index)
		counter = 0
		current_node = @head

		while counter < index
			current_node = current_node.next
			counter += 1
		end

		puts "Word at index #{index} is #{current_node.word}"
		current_node
	end

	def print_list
		counter = 0
		current_node = @head
		loop do
			puts "Node at index #{counter}: #{current_node.word}"
			break if current_node.next.nil?
			current_node = current_node.next
			counter += 1
		end
	end
end

class HashTable
	def initialize
		@buckets = []
	end

	def hash(word)
		first_letter = word.downcase.slice(0,1)
		alphabet = ("a".."z").to_a
		alphabet.index(first_letter)
	end

	def insert(word, definition = nil)
		if @buckets[hash(word)]
			@buckets[hash(word)].add_node(word, definition)
		else
			@buckets[hash(word)] = LinkList.new
			@buckets[hash(word)].add_node(word, definition)
		end
	end

	def render_list
		@buckets.each do |bucket|
			if !bucket.nil?
				bucket.print_list
			end
		end
		return true
	end

	# Looks for the definition of a word
	def define(word)
		count = 1
		if @buckets[hash(word)]
			current_node = @buckets[hash(word)].head
			loop do
				if current_node.word.downcase == word.downcase
					unless current_node.definition.nil?
						puts "Definition: #{current_node.definition}. Found in #{count} steps."
					else
						puts "Definition not found. #{count} steps."
					end
					break
				else
					if current_node.next.nil?
						puts "Definition not found. #{count} steps."
						break
					end
					current_node = current_node.next
				end
				count += 1
			end
		else # If the bucket doesn't exist then the word doesn't either.
			puts "Sorry, that word isn't defined yet. #{count} steps."
		end
	end
end

def load(dictionary_name)
	arr = []
	file = File.open(dictionary_name, "r") do |file|
		arr = file.readlines
		arr = arr.map {|word| word.strip }
	end
	arr
end

h = HashTable.new
dictionary = load("5desk.txt")
dictionary.each do |word|
	h.insert(word)
end

h.render_list
h.define("X")