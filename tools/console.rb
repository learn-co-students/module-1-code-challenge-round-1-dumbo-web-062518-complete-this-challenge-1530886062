require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

steven = Customer.new("Steven", "Even")
marlon = Customer.new("Marlon", "Brando")
toni = Customer.new("Toni", "Braxton")
andre = Customer.new("Andre", "Dgiant")
dan = Customer.new("Dan", "Dman")
warlon = Customer.new("Marlon", "Evil Twin")

flavourtown = Restaurant.new("Flavour Town")
roachtown = Restaurant.new("Roach Town")
bestfood = Restaurant.new("C Rating")

Customer.all[-1].add_review(Restaurant.all[2], "This place has the best food! But they should do a better job of maintaining the restrooms. Ruined the experience from the moment I walked in, puteo!")

Customer.all[-1].add_review(Restaurant.all[1], "Best roaches in the city, LOVE!")

Customer.all[1].add_review(Restaurant.all[1], "I saw roaches everywhere, on the walls, on the floors, EVEN IN MY FOOD!")

Customer.all[4].add_review(Restaurant.all[0], "THIS PLACE == GREAT FLAVOUR")




# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
