class Restaurant
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
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
