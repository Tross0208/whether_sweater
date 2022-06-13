class Api::V1::ForecastsController < ApplicationController
  def index
    location = MapFacade.get_coords(params[:location])
    weather = WeatherFacade.get_weather(location)
    binding.pry
  end
end
