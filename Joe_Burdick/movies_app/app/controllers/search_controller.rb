class SearchController < ApplicationController
  def index
  	query = params[:q]
  	@movies = Movie.where('name LIKE :query OR description LIKE :query',
  		query: "%#{query}%")
  end
end
