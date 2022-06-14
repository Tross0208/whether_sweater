class Api::V1::BreweriesController::BrewerySerializer
  def self.brewery_index_serializer(breweries, location, weather)


{
  "data": {
    "id": "null",
    "type": "breweries",
    "attributes": {
      "destination": location,
      "forecast": {
        "summary": weather[:current][:weather].first[:description],
        "temperature": ((weather[:current][:temp]-273)*1.8+32).round
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
