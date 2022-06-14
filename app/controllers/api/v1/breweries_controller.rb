class Api::V1::BreweriesController < ApplicationController
  def index
    if params[:location] && (params[:quantity].to_i > 0)
      location = MapFacade.get_coords(params[:location])
      weather = WeatherFacade.get_weather(location)
      breweries = BreweryFacade.total_results(params[:location], params[:quantity])
      render json: BrewerySerializer.brewery_index_serializer(breweries, params[:location], weather)
    else
      render status: 404
    end
  end

end
