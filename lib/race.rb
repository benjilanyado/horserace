require "lib/field"

class Race

	attr_accessor :horse_choice
	attr_accessor :bet_size


	def initialize()

	@horse_choice = horse_choice
	@bet_size = bet_size
  @field = Field.new  #initializing field and then executing disply_field

	puts "HERE ARE YOUR HORSES & ODDS... PICK ONE"
	horse_choice = $stdin.gets.chomp

	if @field.horses.has_key?(horse_choice)
	  puts "HOW MUCH YOU WANNA PAY?"
    bet_size = $stdin.gets.chomp	
    make_race_happen	    #as defined below
  else 
		puts "WRONG"
  end

					
	end


	def make_race_happen
		puts "#{@horse_choice} lost you fool, there goes #{@bet_size}"    #as you have defined these instance variables abvove
	end

	def display

			#here are horse and odds
	end


end
