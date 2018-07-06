class Review

  @@all = []

  attr_accessor :restaurant, :content, :customer

  def initialize(restaurant, content, customer)
    @returant = restaurant
    @content = content
    @customer = customer
    @@all << self
  end

  def self.all
    @@all
  end

end 


# * Review.all
#   * returns all of the reviews
# * Review#customer
#   * returns the customer object for that given review
# * Review#restaurant
#   * returns the restaurant object for that given review
