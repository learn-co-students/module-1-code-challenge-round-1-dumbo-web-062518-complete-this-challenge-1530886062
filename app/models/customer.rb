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
    Review.new(restaurant, self, content)
  end

end
