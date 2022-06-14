require 'rails_helper'

RSpec.describe "Brewery API request" do
  it 'returns serialized breweries', :vcr do
    response = get "/api/v1/breweries?location=denver&quantity=5"
    
    expect(response).to eq(200)
  end
end
