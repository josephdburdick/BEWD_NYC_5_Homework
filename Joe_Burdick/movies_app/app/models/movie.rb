class Movie < ActiveRecord::Base

	validates :title, presence: true
	validates :description, presence:true, length: { minimum: 10 }
	validates :year_released, numericality: { greater_than: 0 }
	validates :rating, numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }

end
