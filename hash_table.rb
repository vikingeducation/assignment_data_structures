require_relative 'linked_list'
require 'colorize'

class HashTable

	def initialize
		@buckets = Array.new(26)
		@wc = Array.new(26,0)
	end

	def load_dict
		File.open("5desk.txt", 'r') do |f1|  
  			while line = f1.gets
    			insert(line.chomp.downcase, "it means \'#{line.chomp}\'")
  			end  
		end
	end

	def hash(word)
		word.ord - 97
	end

	def insert(word, definition)
		@wc[hash(word)] += 1
		if @buckets[hash(word)]
			cur_list = @buckets[hash(word)]
			cur_list.add_node(word, definition)
			#cur_list.print_list
		else
			new_list = LinkedList.new
			new_list.add_node(word, definition)
			@buckets[hash(word)] = new_list
			#new_list.print_list
		end
	end

	def render_list
		@buckets.each_with_index do |list, index|
			p (index + 97).chr
			if list
				list.print_list
			end
		end
	end

	def define(word)
		steps = 0
		if @buckets[hash(word)]
			list = @buckets[hash(word)]
			@wc[hash(word)].times do |index|
				node = list.find_node(index)
				if node.word == word
					puts "#{word}".blue + " means " + "#{node.definition}".green + " after #{index + 1} steps"
					return
				end
				steps = index
			end
			puts "word not found after #{steps+1} steps"
		else
			puts "word not found after #{steps+1} steps"
		end
	end

end

the_hash = HashTable.new
the_hash.load_dict
the_hash.define("abdomen")