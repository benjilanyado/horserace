class Field


	attr_accessor :field

	include Enumerable


	


		def initialize
			@field = {

				"Dave" => "4",
				"Jim" => "20",
				"Phil" => "4",
				"Bob" => "5",
				"Sophie" => "3",
				"Gary" => "8",
				"Lucy" => "7"

			}

			 # "%w" fills in the syntax for you - in an array
			display_field


		end

		def display_field

			@field.each do|name, odds|

				puts "#{name} #{odds}"

			end
		end

		






end


