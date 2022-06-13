class Api::V1::ForecastsController < ApplicationController
  def index
    location = MapFacade.get_coords(params[:location])
    weather = WeatherFacade.get_weather(location)
    render json: Api::V1::ForecastsController::ForecastSerializer.forecast_index_serializer(weather)

  end
end
