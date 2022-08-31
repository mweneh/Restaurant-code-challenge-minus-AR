class Restaurant
  attr_reader :name

  def initialize(name)
    @name = name
  end
  def reviews
    # access all reviews 
    # loop through all reviews then check reviews for specific restaurant
    Review.all.select do |review|
      review.restaurant == self
    end
  end

  def customers
    # access reviews for a self restaurant
    # loop over the reviews to get a uniq customer name
    self.reviews.map do |review|
      review.customer.full_name
    end.uniq
  end

  # helper method
  def find_all_ratings
    self.reviews.map do | review |
      review.rating
    end.sum 
  end

  def average_star_rating
    # get all the ratings for self restaurant
    # divide all ratings by total number of reviews

    self.find_all_ratings / self.reviews.count
  end
end
