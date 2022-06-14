require 'rails_helper'

RSpec.describe "Brewery API request" do
  it 'returns serialized breweries', :vcr do
    response = get "/api/v1/breweries?location=denver&quantity=5"

    expect(response).to eq(200)
  end
  it 'denies request with no location', :vcr do
    response = get "/api/v1/breweries?quantity=5"

    expect(response).to eq(404)
  end
  it 'denies request with invalid quantity', :vcr do
    response = get "/api/v1/breweries?location=denver&quantity=0"

    expect(response).to eq(404)
  end
end
