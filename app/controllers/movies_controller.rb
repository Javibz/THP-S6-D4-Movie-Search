class MoviesController < ApplicationController
  def search
  	@search = SearchMovie.new
  end

  def create

    @searching = SearchMovie.new.search(params[:search])
   
  end

end
