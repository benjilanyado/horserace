# Benji, this bit of code selects a random winner but
# is weighted towards the better horses (high number)
# it just rough working btw and everything is stuck
# in one file. Needs to be split into methods/files
# No validations, CBA to finish it we can do it in class

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

puts "Whats your name?"
user_name = $stdin.gets.chomp
puts "Hi #{user_name.capitalize} your starting bank is $100"
puts "take a look at the racecard below and select a horse"
puts "\n"


# selects between 4-10 horses from list above
field = pool.sample(rand(4..7))

# put field in a hash , horse name = key, random number =value
# value is the rank of the horse
@horses = {}
field.each do |name|
  @horses[name] = rand (1..10)
end



  
# calculates the cumulative frequency  
cum_freq = 0                          
@horses.each do |horse, rank|
  cum_freq += rank
end


# calculates the probability and puts it into @horses
@horses.each do |horse, rank|
 @horses[horse] = rank.to_f / cum_freq
end

#displays horse and decimal odds
@horses.each do |horse, rank|
  puts "#{horse}     - Odds: #{(1 / rank).round(2)  }"
end



#puts field
# need to extract probability anc convert to decimal odds
# puts @horses  #--- uncomment to show the hash and the ranking
puts "\n"
puts "Your selection:"
user_horse = $stdin.gets.chomp
user_horse = user_horse.capitalize
puts "How much do you want to bet "
user_bet = $stdin.gets.chomp
puts "\n"

# use odds to make the code bit easy to read
odds = @horses[user_horse]

# def select_winner
  #adds up cumulative frequency, am i repeating myself here
  # couldn't find much docs on rand ask
  num = 0
  @horses.each {|horse, odds| @horses[horse] = num += odds }
 
  r = rand
  selected = @horses.find{ |horse, odds| odds > r } 

 
  
  #it works but re-write so its easier
  bank = 100
  tot_return = (user_bet.to_f * (1 / odds)).round(2)
  bank -= user_bet.to_f
         #take care of betting more than you have 
  
  puts "And the winner is #{selected[0]}"
  if selected[0] == user_horse
    puts "Return: #{ tot_return }"  
    puts "your current balance is #{bank += tot_return}"
  else
    puts "you just spunked #{user_bet}"
    puts "your current balance is #{bank}"
  end
  
  




  






