require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

#customers
steven=Customer.new("steve","torres")
joe=Customer.new("joe","smith")
dan=Customer.new("dan","doe")

#restaurants
hello = Restaurant.new("hello")
world = Restaurant.new("world")
shack = Restaurant.new("shack")

#reviews
steven.add_review(hello,"amazing")
joe.add_review(world,"great")
dan.add_review(shack,"ehh") 








binding.pry
0 #leave this here to ensure binding.pry isn't the last line
