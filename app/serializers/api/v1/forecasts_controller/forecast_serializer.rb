class Api::V1::ForecastsController::ForecastSerializer
  def self.forecast_index_serializer(data)

    {
      data: {
      id: nil,
      type: "forecast",
      attributes: {
        current_weather: {
          datetime: data[:current][:dt],
          sunrise: data[:current][:sunrise],
          sunset: data[:current][:sunset],
          temperature: data[:current][:temp],
          feels_like: data[:current][:feels_like],
          humidity: data[:current][:humidity],
          uvi: data[:current][:uvi],
          visibility: data[:current][:visibility],
          conditions: data[:current][:weather].first[:description],
          icon: data[:current][:weather].first[:icon],

      },
      daily_weather: [
        {
          date: "",
          sunrise: "",
          sunset: "",
          max_temp: "",
          min_temp: "",
          conditions: "",
          icon: "",

        },

      ],
      hourly_weather: [
        {
          time: "",
          temperature: "",
          conditions: "cloudy with a chance of meatballs",
          icon: "",
        },
      ]
    }
  }
}
  end
end
