require_relative 'linkedlist'
require_relative 'dictionary'

class Hashtable

	def initialize

		@buckets  = []
		@dictionary = Dictionary.new

	end


	def hash( word )

		return ( word[ 0 ].downcase.ord - 97 )

	end



	def insert( word )


		index = hash( word )

		if @buckets[ index ].nil?

			@buckets[ index ] = LinkedList.new( Node.new( word, "it is a #{word}", nil) )

		else

			@buckets[ index ].add_node( word, "it is a #{word}" )

		end

	end


	def render_list
# how do we drill down to each item in the linked list - currently only printing the head of the linked list
		@buckets.each do | e |

			unless e.nil?

				e.print_list

			end

		end

	end


	def define( word )

		index = hash( word )

		result = @buckets[ index ].find_word( word )

		if result == false

			# O(n) - must traverse through every word for that letter
			puts "Sorry, the word is not here."

		else

			puts "Found it! #{word}: #{result}"

		end


	end


	def load_dictionary

		@dictionary.process_dictionary

		@dictionary.arr.each do | w |

			insert( w )

		end

	end


end


word = Hashtable.new

word.load_dictionary

word.render_list

word.define("Park")

