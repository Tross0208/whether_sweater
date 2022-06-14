class Api::V1::BreweriesController::BrewerySerializer
  def self.brewery_index_serializer(breweries, location, weather)
{
  "data": {
    "id": "null",
    "type": "breweries",
    "attributes": {
      "destination": location,
      "forecast": {
        "summary": weather.conditions,
        "temperature": weather.temperature
      },
      "breweries":
        breweries.map do |brewery|
        {
          "id": brewery.id,
          "name": brewery.name,
          "brewery_type": brewery.brewery_type
        }
      end
    }
  }
}
end
end
