class WeatherFacade
  def self.get_weather(coords)
    weather = WeatherService.get_weather(coords[:lat], coords[:lng])
  end

  def self.get_little_weather(coords)
    weather = WeatherService.get_weather(coords[:lat], coords[:lng])
    Weather.new(weather[:current])
  end
end
