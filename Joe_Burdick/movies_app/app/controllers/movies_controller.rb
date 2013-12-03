class MoviesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]


  def index
  	@movies = Movie.all
  end

  def edit
  	find_movie
  end

  def create
    safe_params
  	@movie = Movie.create safe_params
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
    safe_params
    @movie.update safe_params
    
    save_update_movie
  end

  private

  def safe_params
    params.require(:movie).permit(:title, :description, :year_released, :rating)
  end

  def find_movie
    @movie = Movie.find params[:id]

  rescue ActiveRecord::RecordNotFound
    redirect_to root_path
  end

  def save_update_movie
    if @movie.save
      flash[:notice] = "Movie saved successfully"
      redirect_to @movie
    else
      render 'new'
    end
  end

end
