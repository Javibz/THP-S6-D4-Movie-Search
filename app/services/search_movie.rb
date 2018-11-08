# require 'dotenv'
# Dotenv.load

class SearchMovie

  def initialize
    Tmdb::Api.key(ENV['API_KEY'])
  end

  def search(movie)
    final_result = []
    movies = Tmdb::Movie.find(movie)

    i = 0

    20.times do
    	hash_movie = Hash.new
    	hash_movie['title'] = movies[i]::title
    	hash_movie['release_date'] = movies[i]::release_date
    	hash_movie['director'] = get_director(movies[i]::id)
    	hash_movie['poster_path'] = "https://image.tmdb.org/t/p/w200#{movies[i]::poster_path}"

    	final_result << hash_movie

    	i += 1
    end
    return final_result
  end

  def get_director(movie_id)
   crew = Tmdb::Movie.credits(movie_id)["crew"]
   director = ""
   crew.each do |person|
     if person["job"]=="Director"
       director = person["name"]
     end
   end
   if director == ""
     director = "...not find..."
   end
   return director
 end
end
