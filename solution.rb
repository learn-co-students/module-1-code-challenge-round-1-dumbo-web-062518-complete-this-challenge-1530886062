class Customer
  attr_accessor :first_name, :last_name
  @@all = []

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end
#Class Methods
  def self.all
    @@all
  end

  def self.find_by_name(customer_name)
    all.find {|customer| customer_name.downcase == customer.full_name.downcase}
  end

  def self.find_by_first_name(first)
    all.select{|customer| first.downcase == customer.first_name.downcase}
  end

  def self.all_names
    all.map {|customer| customer.full_name}
  end

  #Instance Methods
  def full_name
    "#{first_name} #{last_name}"
  end

  def add_review(restaurant, text)
    Review.new(self, restaurant, text)
  end

end

#END CUSTOMER CLASS

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

def self.find_by_name(name)
  all.find {|restaurant| name.downcase == restaurant.name.downcase}
end

#instance methods

def reviews
reviews = []
  find_restaurant.select {|each| reviews << each.text}
  reviews
end

def customers
  customers = []
    find_restaurant.select {|each| customers << each.customer}
  customers
end

def find_restaurant
  Review.all.select {|review| review.restaurant == self}
end

end

#END RESTAURANT CLASS

class Review
  attr_reader :restaurant, :customer, :text

  @@all = []

  def initialize(customer, restaurant, text)
    @restaurant = restaurant
    @customer = customer
    @text = text

    @@all << self
  end

  def self.all
    @@all
  end

end

#END TEST
