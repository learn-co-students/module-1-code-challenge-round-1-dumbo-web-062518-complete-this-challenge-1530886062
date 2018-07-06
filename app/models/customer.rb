class Customer

  @@all = []
  attr_accessor :first_name, :last_name, :full_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @full_name = "#{first_name} #{last_name}"
    @@all << self
  end

  # def full_name
  #   "#{first_name} #{last_name}"
  # end

  def self.all
    @@all
  end

  def self.find_by_name(name)
    self.all.find do |customer|
      customer.full_name == name
    end
  end

  def self.find_all_by_first_name(name)
    names = []
    self.all.find do |customer|
        names << customer.first_name == name
    end
    names 
  end

  def self.all_names
    full_names = []
    self.all.map do |customer|
      full_names << customer.full_name
    end
    full_names
  end


def add_review (restaurant, content)
  Review.new(restaurant, content, self)
end

end


# Build the following methods on the `Customer` class


# * Customer#add_review(restaurant, content)
#   * given a **restaurant object** and some review content (as a string), creates a new review and associates it with that customer and restaurant. A `Review` belongs to a `Customer` and belongs to a `Restaurant`
