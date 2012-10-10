class Field


	attr_accessor :horses

	include Enumerable


	


		def initialize
			@horses = {

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

			@horses.each do|name, odds|

				puts "#{name} #{odds}"

			end
		end

		






end


