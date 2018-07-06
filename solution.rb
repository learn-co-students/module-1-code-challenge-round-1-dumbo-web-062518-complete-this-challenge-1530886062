# Please copy/paste all three classes into this file to submit your solution!
class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name_query)
      self.all.find { |restaurant| restaurant.name.downcase == name_query.downcase}
  end

  def reviews
    Review.all.select { |review| review.restaurant == self }
  end

  def customers
    self.reviews.map { |review| review.customer }
  end
end

# * Restaurant.all
#   * returns an array of all restaurants
# * Restaurant.find_by_name(name)
#   * given a string of restaurant name, returns the first restaurant that matches
# * Restaurant#reviews
#   * returns an array of all reviews for that restaurant
# * Restaurant#customers
#   * returns all of customers who have written reviews of that restaurant. A `Restaurant` has many `Customers` and a `Customer` has many `Restaurants`

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

class Customer
  attr_accessor :first_name, :last_name, :full_name

  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = "#{first_name} #{last_name}"
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(name_query)
    self.all.find { |customer| customer.full_name.downcase == name_query.downcase}
  end

  def self.find_all_by_first_name(name_query)
    self.all.select { |customer| customer.first_name.downcase == name_query.downcase }
  end

  def self.all_names
    self.all.map { |customer| customer.full_name }
  end

  def add_review(restaurant, content)
    if restaurant.class == Restaurant
      Review.new(restaurant, self, content)
    end
  end
end

# * Customer.all
#   * should return **all** of the customer instances
# * Customer.find_by_name(name)
#   * given a string of a **full name**, returns the **first customer** whose full name matches
# * Customer.find_all_by_first_name(name)
#   * given a string of a first name, returns an **array** containing all customers with that first name
# * Customer.all_names
#   * should return an **array** of all of the customer full names
# * Customer#add_review(restaurant, content)
#   * given a **restaurant object** and some review content (as a string), creates a new review and associates it with that customer and restaurant. A `Review` belongs to a `Customer` and belongs to a `Restaurant`
