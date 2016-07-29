require_relative 'linkedlist'

require 'pry'

class Hashtable

	def initialize

		@buckets  = []
		@list = nil

	end


	def hash( word )

		return ( word[ 0 ].downcase.ord - 97 )

	end



	def insert( word )


		index = hash( word )

		if @buckets[ index ] == nil

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

		# determines which bucket to look into
		index = hash( word )
		# then looks through each item in that bucket
		result = @buckets[ index ].find_word( word )

		if result == false

			puts "Sorry, the word is not here."

		else

			puts "Found it! #{word}: #{result}"

		end
		# until the word is found
		# returns the

	end




end


word = Hashtable.new

word.insert( "cat" )
word.insert( "kangaroo" )
word.insert( "boy" )
word.insert( "dear" )
word.insert( "car" )
word.insert( "egg" )
word.insert( "zebra" )

puts "render"
word.render_list

word.define("zebra")
