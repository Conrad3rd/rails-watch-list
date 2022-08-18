class MoviesController < ApplicationController
  def index
    @movies = Movie.all
  end

  def new
    @movies = Movie.new
  end

  def search
    @search
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def create
    @movie = Movie.create(movie_params)
    redirect_to movie_path(@movie)
  end

  def edit
    @movie = Movie.find(params[:id])
  end

  def update
    @movie = Movie.find(params[:id])
  end

  def destroy
    @movie = Movie.find(params[:id])
  end

  private

  def movie_params
    params.require(:movie).permit(:title, :overview, :poster_url, :rating)
  end
end
