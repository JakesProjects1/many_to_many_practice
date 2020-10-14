# put your Tourist model here
class Tourist

    attr_reader :name
    
    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        @@all.find do |tourist|
            tourist.name == name
        end
    end

    def trips
        Trip.all.select do |trip|
            trip.tourist == self
        end
        #binding.pry
    end

    def landmarks
        self.trips.map do |place|
            place.landmark
        end
    end

    def visit_landmark(landmark)
        Trip.new(self, landmark)
    end

    def never_visited
        Trip.all.select do |trip|
            trip.tourist != self
        end.map do |trip|
            trip.landmark
        end
    end



end