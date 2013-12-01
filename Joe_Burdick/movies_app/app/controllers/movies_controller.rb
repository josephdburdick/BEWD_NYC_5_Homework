class MoviesController < ApplicationController
  def index
  	@movies = Movie.all
  end

  def edit
  	find_movie
  end

  def create
    safe_movie
  	@movie = Movie.create safe_movie
  	save_update_movie
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
    
    save_update_movie
  end

  private

  def safe_movie
    params.require(:movie).permit(:title, :description, :year_released, :rating)
  end

  def find_movie
    @movie = Movie.find params[:id]
  end

  def save_update_movie
    if @movie.save
      redirect_to @movie
    else
      render 'new'
    end
  end

end
