class Restaurant
  @@all = []
  attr_accessor :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |resturant|
      resturant.name == name
    end
  end

  def reviews
    Review.all.find do |reviews|
      reviews.restaurant == self 
    end
  end

  def customers
    reviews.map do |review|
      review.customer
    end
  end

end


# * Restaurant#reviews
#   * returns an array of all reviews for that restaurant
# * Restaurant#customers
#   * returns all of customers who have written reviews of that restaurant. A `Restaurant` has many `Customers` and a `Customer` has many `Restaurants`
