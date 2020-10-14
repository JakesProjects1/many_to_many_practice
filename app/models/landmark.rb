# put your Landmark model here
class Landmark
    
    
    @@all = []
    attr_reader :name, :city
    
    def initialize(name, city)
        @name = name
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_city(city)
        self.all.select do |landmark|
            landmark.city == city
        end.map do |landmark|
            landmark
        end
    end

    def trips
        Trip.all.select do |trip|
            trip.landmark == self
        end.map do |trip|
            trip
        end
    end

    def tourists
        self.trips.map do |visitor|
            visitor.tourist
        end
    end
    



end