require 'rails_helper'

RSpec.describe "Brewery serializer" do
  it 'returns serialized breweries', :vcr do
    location = MapFacade.get_coords("denver")
    weather = WeatherFacade.get_weather(location)
    breweries = BreweryFacade.total_results("denver", 5)

    result = Api::V1::BreweriesController::BrewerySerializer.brewery_index_serializer(breweries, "denver", weather)
    brewery_count = result[:data][:attributes][:breweries].count
    forecast = result[:data][:attributes][:forecast]
    city = result[:data][:attributes][:destination]


    expect(result).to be_instance_of(Hash)
    expect(brewery_count).to eq(5)
    expect(forecast).to have_key(:summary)
    expect(city).to eq("denver")
  end


end
