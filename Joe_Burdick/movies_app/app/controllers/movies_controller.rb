class MoviesController < ApplicationController
  def index
  	@movies = Movie.all
  end

  def edit
  	find_movie
  	# render :show
  end

  def create
    safe_movie
  	@movie = Movie.create safe_movie
  	redirect_to @movie
  end

  def new
    @movie = Movie.new 
  end

  def show
    find_movie
  end

  def update
    find_movie
    safe_movie
    @movie.update safe_movie
    redirect_to @movie
  end

  private

  def safe_movie
    params.require(:movie).permit(:title, :description, :year_released, :rating)
  end

  def find_movie
    @movie = Movie.find params[:id]
  end

end
