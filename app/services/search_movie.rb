class SearchMovie

  def initialize
    Tmdb::Api.key("17fbf39889cba8cfb4f981fb28109df8")
  end

  def search(movie)
    Tmdb::Movie.find(movie)

    movie_hash = Hash.new
    

  end
end
