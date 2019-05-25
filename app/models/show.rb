# popular_shows: returns an array of all of the shows that have a rating greater than 5. hint: use the where Active Record method.
# shows_by_alphabetical_order: returns an array of all of the shows sorted by alphabetical order according to their names. hint: use the order Active Record method.
class Show < ActiveRecord::Base

    def self.highest_rating
        self.maximum(:rating)
    end

    def self.most_popular_show
        self.where("rating = ?", self.highest_rating).first
    end

    def self.lowest_rating
        self.minimum(:rating)
    end

    def self.least_popular_show
        self.where("rating = ?", self.lowest_rating).first
    end

    def self.ratings_sum
        self.sum(:rating)
    end

    def self.popular_shows
        self.where("rating > 5")
    end

    def self.shows_by_alphabetical_order
        self.order(:name)
    end

end