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

		@buckets.each_with_index do | e, i |

			unless e.nil?
binding.pry
				puts e.head

			end

		end


	end


end


word = Hashtable.new

word.insert( "cat" )
word.insert( "kangaroo" )
word.insert( "b" )
word.insert( "dear" )
word.insert( "car" )
word.insert( "e" )
word.insert( "z" )

word.render_list