class WeatherFacade
  def self.get_weather(coords)
    weather = WeatherService.get_weather(coords[:lat], coords[:lng])

    a = get_current_weather(weather)
    c = get_hourly_weather(weather)
    b = get_daily_weather(weather)
    binding.pry
  end

  def self.get_current_weather(weather_data)
    CurrentWeather.new(weather_data[:current])
  end

  def self.get_hourly_weather(weather_data)
    weather_data[:hourly][1..8].map {|hour| HourlyWeather.new(hour)}
  end

  def self.get_daily_weather(weather_data)
    weather_data[:daily][1..5].map {|day| DailyWeather.new(day)}
  end

end
