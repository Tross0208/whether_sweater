require 'rails_helper'

RSpec.describe "Books API" do
  it 'returns serialized books', :vcr do
    response = get "/api/v1/breweries?location=denver&quantity=5"

    expect(response).to eq(200)
  end
end
