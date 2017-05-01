json.extract! movie, :id, :rank, :name, :releaseDate, :distributor, :genre, :mpaa, :grossEarning, :ticketsSold, :created_at, :updated_at
json.url movie_url(movie, format: :json)
