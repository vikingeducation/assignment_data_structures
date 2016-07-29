class Dictionary

	attr_reader :arr

	def initialize

		@file = File.open( "dict.txt", "r" )
		@arr = []

	end


	def process_dictionary


		@file.readlines.each do | w |

			@arr << w.strip

		end


	end



end