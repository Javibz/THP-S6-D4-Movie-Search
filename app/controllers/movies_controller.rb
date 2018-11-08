class MoviesController < ApplicationController
  def search
  end

  def create
    @searching = SearchMovie.new.search(params[:search])
    p" NOOOOOOOOOOOOOOOOOOOOOOOOOOON"
  end

  def show
  end

end
