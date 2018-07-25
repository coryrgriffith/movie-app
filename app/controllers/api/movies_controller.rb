class Api::MoviesController < ApplicationController
  def index
    response = Unirest.get("http://www.omdbapi.com/?t=#{params[:title]}&apikey=#{ENV['MOVIE_API_KEY']}")
    @movie = response.body
    render "index.json.jbuilder"
  end
end
