class Customer
  attr_accessor :given_name, :family_name
  @@all = []
  def initialize(given_name, family_name)
    @given_name = given_name
    @family_name  = family_name

    @@all << self
  end

  def full_name
    "#{given_name} #{family_name}"
  end
def self.all
  @@all
end

def restaurants
  # access all reviews 
  # get all reviews by self
  # all restaurants self has reviewed
  Review.all.select do |review|
    review.customer == self
  end.map do |customerReview|
    customerReview.restaurant
  end.uniq
end

def add_review(restaurant,rating)
  Review.new(self,restaurant,rating)
  
end

def num_reviews
  # access all reviews
  # loo[ through them and get self reviews]
  # return total
  Review.all.select do |review|
    review.customer ==self
  end.count
end
def self.find_by_name(name)
  # use @@all 
  # loop over list
  # use customer.full_name to get customer sought
  # returns one
  self.all.find do |customer|
    customer.full_name == name
  end
end

def self.find_all_by_given_name(name)
    # use @@all 
  # loop over list
  # find all customers with given name
  self.all.find_all do |customer|
    customer.given_name == name
  end
end


end
