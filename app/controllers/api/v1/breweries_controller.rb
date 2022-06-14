class Api::V1::BreweriesController < ApplicationController
  def index
    location = MapFacade.get_coords(params[:location])
    weather = WeatherFacade.get_weather(location)
    breweries = BreweryFacade.total_results(params[:location], params[:quantity])
    render json: BrewerySerializer.brewery_index_serializer(breweries, params[:location], weather)
  end
end
