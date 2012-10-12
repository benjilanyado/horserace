# Benji, this bit of code selects a random winner but
# is weighted towards the better horses (high number)
# it just rough working btw


@horses = {
  "Dave" => 4,
	"Jim" => 200,
	"Phil" => 4,
	"Bob" => 5,
	"Sophie" => 3,
	"Gary" => 8,
	"Lucy" => 7
}

x=0   
# calculates the cumulative frequency                            
@horses.each do |horse, rank|
  x += rank
end

# calculates the probability and puts it into @horses
@horses.each do |horse,rank|
  @horses[horse] = rank.to_f / x 
end


def select_winner
  #adds up cumulative frequency
  num = 0
  @horses.each {|horse, odds| @horses[horse] = num += odds }
 
  r = rand 
  selected = @horses.find{ |horse, odds| odds > r } 

  p selected[0]

end

puts select_winner