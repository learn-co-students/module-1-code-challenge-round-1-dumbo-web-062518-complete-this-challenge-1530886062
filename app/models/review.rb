class Review
  attr_accessor :restaurant, :customer, :content

  @@all = []

  def initialize(restaurant, customer, content)
    @restaurant = restaurant
    @customer = customer
    @content = content
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
