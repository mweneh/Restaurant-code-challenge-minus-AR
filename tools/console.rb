require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

# create customer instance
dave = Customer.new('Dave' ,'Ongaro')
billy = Customer.new('Billy' ,'Mwangi')
brian = Customer.new('Brian', 'Munene')
gladys = Customer.new('Gladys', 'Ndichu')
brian2 = Customer.new('Brian', 'Munene')
dave2 = Customer.new('Dave' ,'Ongaro')


# create restaurant
kili = Restaurant.new('Kilimanjaro')
bigfish = Restaurant.new('The BigFish')
artcaffe = Restaurant.new('Artcaffe')
azuri = Restaurant.new('Azuri')
bigs = Restaurant.new('Bigsquare')

# create review instances

review1 = Review.new(dave, azuri, 8)
review2 = Review.new(dave, artcaffe, 6)
review3 = Review.new(billy, kili, 7)
review4 = Review.new(billy, azuri, 5)
review5 = Review.new(brian , bigfish ,9)
review6 = Review.new(gladys, bigs, 6)
binding.pry
0 #leave this here to ensure binding.pry isn't the last line