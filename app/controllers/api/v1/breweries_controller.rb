class Api::V1::BreweriesController < ApplicationController
  def index
    breweries = BreweryFacade(params[:location], params[:quantity])
    #books = BookFacade.search_books(params[:location], params[:quantity])
    #location = MapFacade.get_coords(params[:location])
    #weather = WeatherFacade.get_weather(location)
    #total_results = BookFacade.total_results(params[:location])
    #ALL the args. refactor
    #render json: BookSerializer.books_index(books, weather, params[:location], total_results), status: 200
  end
end
