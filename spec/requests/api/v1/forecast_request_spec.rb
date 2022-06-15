require 'rails_helper'

RSpec.describe "Forecast API Request" do
  it 'returns serialized forecast', :vcr do
    response = get "/api/v1/forecast?location=denver,co"
    expect(response).to eq(200)
  end

  it 'rejects requests without location' do
    response = get "/api/v1/forecast"
    expect(response).to eq(404)
  end
end
