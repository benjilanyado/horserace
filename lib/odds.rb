# Benji, this bit of code selects a random winner but
# is weighted towards the better horses (high number)
# it just rough working btw and everything is stuck
# in one file. Needs to be split into methods/files
# No validations etc

pool = %w[Doolittle 
Peaches 
Dawn
Savvy
Goblin
Ricky
Joy
Scottie
George
Chow
Celio
Hope
Charity
Faith
Liza
Sophie
City
Gossip
Baldy
Jeffy
Duberry
Lily
Maddy
Darcy
DeeDee
Rose
Secrete
Lily
Phantom 
Blaze
Xiphias
DArtagnan
Treasure
Dreamboat Annie
Casper
Dude
Cosmo
Smooch
Champ
Kassidy
Junior
Legacy
Ben
Daiman
Raleigh
Starbuck
Leo
Mahan
Fresca
Penny
Sunshine
Stony
Kaycee
Sky
Kermit
Breezy
Hershey
Rusty
Elvis
Hawkeye
Sampson
Warren
Sinjann
Roxy
Gretta
Megan
Sunny
Lady
Image
Dolce
Frosty 
Ike
Sienna
Bob
Boomer
Thunder
Jack
Nick
Red
Pete
Levi
Jet
Memphis
Dakota
Misty
Sheba
Nadira
Nissan
Baystar
Beauty
Prince
Chili ]

# selects between 4-10 horses from list above
field = pool.sample(4 + rand(6))




# put field in a hash , horse name = key, random number =value
# value is the rank of the horse
@horses = {}
field.each do |name|
  @horses[name] = rand (1..10)
end

puts field
# need to extract probability anc convert to decimal odds
# puts @horses  #--- uncomment to show the hash and the ranking
puts "Choose a horse"
user_horse = $stdin.gets.chomp
puts "How much do you want to bet "
user_bet = $stdin.gets.chomp
 


x=0   
# calculates the cumulative frequency                            
@horses.each do |horse, rank|
  x += rank
end

# calculates the probability and puts it into @horses
@horses.each do |horse,rank|
  @horses[horse] = rank.to_f / x 
end


# def select_winner
  #adds up cumulative frequency
  num = 0
  @horses.each {|horse, odds| @horses[horse] = num += odds }
 
  r = rand
  selected = @horses.find{ |horse, odds| odds > r } 

  p selected[0]
  
  puts "And the winner is #{selected}"
  if selected[0] == user_horse
    puts "you just won #{user_bet.to_i * (1 / selected[1])}"  # not right sort it
  else
    puts "you just spunked #{user_bet}"
  end

# end


# Player bank will look something like this but initialize(x)
# class Bank
#   
#     bank = 100
#   
#   def win
#     bank += amount_won
#   end
# 
#   def lose
#     bank -= user_bet
#   end
# end
  






