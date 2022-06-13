class WeatherFacade
  def self.get_weather(coords)
    weather = WeatherService.get_weather(coords[:lat], coords[:lng])
  end
end
