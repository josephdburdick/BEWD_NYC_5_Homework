class MoviesController < ApplicationController
  def index
  	@movies = Movie.all
  end

  def edit
  	movie = Movie.find params[:id]
  	render :show
  end

  def create
  	@movie = Movie.create link: params[:id]
  	redirect_to new_movie_path(@movie)
  end

  def show
  end

end
