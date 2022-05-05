class Restaurant < ActiveRecord::Base
    has_many :reviews
    has_many :customers, through: :reviews

    def self.fanciest
        Restaurant.all.order(:price).last
    end

     def all_reviews 
        all_array = []
        self.reviews.map do |review|
            all_array << review.full_review
        end
        all_array
    end

end
