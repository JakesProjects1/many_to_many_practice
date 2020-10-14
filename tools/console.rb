require_relative '../config/environment.rb'

# create your variables and/or write any tests here

joe = Tourist.new("Joe")
tom = Tourist.new("Tom")

yosemite = Landmark.new("Yosemite", "Merced")
lincoln_memorial = Landmark.new("Lincoln Memorial", "DC")
mt_rushmore = Landmark.new("Mt. Rushmore", "South Dakota")

summer_vacation = Trip.new(joe, yosemite)
winter_vacation = Trip.new(tom, lincoln_memorial)
spring_vacation = Trip.new(joe, mt_rushmore)
fall_vacation = Trip.new(tom, yosemite)

puts "name matches"
pp Tourist.find_by_name("Joe") == joe
puts ""
puts "Array of Trips"
pp joe.trips 
puts ""
puts "Tourist knows it's landmarks"
pp joe.landmarks == [yosemite, mt_rushmore]
puts ""
puts "returns an array of places never visited"
pp tom.never_visited == [yosemite, mt_rushmore]
puts ""
puts "Knows all the landmarks"
pp Landmark.all == [yosemite, lincoln_memorial, mt_rushmore]
puts ""
puts "Knows which landmarks are in the city"
pp Landmark.find_by_city("Merced") == [yosemite]
puts ""
puts "knows which trips were taken to the landmark"
pp yosemite.trips == [summer_vacation, fall_vacation]
puts ""
puts "Knows which tourists have visited"
pp yosemite.tourists == [joe, tom]
puts ""
pp Trip.all
puts ""
pp summer_vacation.landmark == yosemite
puts ""
pp winter_vacation.tourist == tom





















#binding.pry
