class MoviesController < ApplicationController
  def search
    @movie = SearchMovie.new
  end

  def create
    p "============================="
    p params
  #  @movie.search(params["search"])

  end

end
