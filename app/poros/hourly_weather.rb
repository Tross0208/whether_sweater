class HourlyWeather
  attr_reader :datetime, :temperature, :conditions, :icon

  def initialize(hourly_weather)
    @datetime = Time.at(hourly_weather[:dt])
    @temperature = hourly_weather[:temp]
    @conditions = hourly_weather[:weather].first[:description]
    @icon = hourly_weather[:weather].first[:icon]
  end

end
