class Movie < ActiveRecord::Base
	validates :title, presence: true
	validates :description, presence:true, length: { minimum: 10 }
	validates :year_released, length: { minimum: 1 }
	validates_numericality_of :rating, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5

end
