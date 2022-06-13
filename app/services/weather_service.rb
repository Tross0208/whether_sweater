class WeatherService
  def self.get_weather(lat, lon)
    response = conn.get("/data/2.5/onecall?lat=#{lat}&lon=#{lon}")
  end

  def self.conn
    Faraday.new('https://api.openweathermap.org') do |faraday|
      faraday.params['appid'] = ENV['weather_api_key']
    end
  end
end
