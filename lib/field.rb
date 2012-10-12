class Field


	attr_accessor :horses

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

		  display_field
		end

		def display_field
			@horses.each do|name, odds|
				puts "#{name} #{odds}"
			end
		end
end


